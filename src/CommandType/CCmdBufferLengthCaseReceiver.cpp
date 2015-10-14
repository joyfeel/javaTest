/*
 * CCmdTypeC_Receiver.cpp
 *
 *  Created on: Feb 25, 2015
 *      Author: vli
 */

#include "header/CCmdBufferLengthCaseReceiver.h"



CCmdBufferLengthCaseReceiver::CCmdBufferLengthCaseReceiver(int _Cmdname,int _BufferLength, std::string _FileName) {
	mCmdname = _Cmdname;
	mBufferLength = _BufferLength;
	mFileName = _FileName;
}

CCmdBufferLengthCaseReceiver::~CCmdBufferLengthCaseReceiver() {
}


string dectobin(int num)
{
    std::string return_;
    bool is_negative = false;
    if(num < 0)
    {
        is_negative = true;
        num = -num;
    }
    while(num) //the algorithm
    {
        int rem = num % 16;
        num /= 16;
        return_.push_back(rem > 9? (rem - 10) + 'A' : rem + '0');
    }
    std::reverse(return_.begin(), return_.end());
    return is_negative? std::string("-")+ return_ : return_;
}


Json::Value CCmdBufferLengthCaseReceiver::Action() {
	Json::Value value;
	Json::Value ArgArray;
	char Shellbuf[4096];
	string tShellbuf;
	string mCmdIndexString;
	FILE *pp;

	stringstream streamIndex, streamBufferLength;
	if((pp=popen("sudo find /home/vli/debugfs/mmc0 -name myTest","r")) == NULL){
		std::cout << "Popen() error: " << std::endl;
	}

	if (mCmdname == set_m_delay) {
		mBufferLength = atoi(dectobin(mBufferLength).c_str());
		//dectobin(mBufferLength);
	}
	streamIndex  		 << setfill('0') << setw(10) << mCmdname;
	streamBufferLength   << setfill('0') << setw(10) << mBufferLength;
	//temp1 = Integer.parseInt(display.getText().trim(), 16 );
	//const int set_buffer_length = 0;
	//const int set_m_delay = 1;
	switch (mCmdname) {
		case set_buffer_length:
			mCmdIndexString.assign("0000000066#");
			break;

		case set_m_delay:
			mCmdIndexString.assign("0000000100#");
			break;

		default:
			mCmdIndexString.assign("0000000066#");
	}

	mCmdIndexString.append(streamIndex.str());							// 00067#00000 		(cmdIndex don't care)
	mCmdIndexString.append("#").append(streamBufferLength.str());		// 00067#00000#00004

	mCmdIndexString.append(" > ");										// 00067#00000#00004  >

	tShellbuf.assign("echo ").append(mCmdIndexString).append(fgets(Shellbuf,sizeof(Shellbuf),pp));
	system(tShellbuf.c_str());

	pclose(pp);

	ArgArray[0]= mBufferLength;

	value["CMDINDEX"] = mCmdname;
	value["Argument"] = ArgArray;
	value["ReadFileName"] = mFileName;

	return value;
}
