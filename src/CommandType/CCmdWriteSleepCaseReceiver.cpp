/*
 * CCmdRWCaseReceiver.cpp
 *
 *  Created on: Feb 25, 2015
 *      Author: vli
 */

#include "header/CCmdWriteSleepCaseReceiver.h"

CCmdWriteSleepCaseReceiver::CCmdWriteSleepCaseReceiver(int _Cmdname, int _StartAdd,
						int _BlkLength, int _SleepLBA,
						std::string _Iofilename,std::string _FileName) {
	// TODO Auto-generated constructor stub
	mCmdname = _Cmdname;
	mStartAdd = _StartAdd;
	mBlkLength = _BlkLength;
	mSleepLBA = _SleepLBA;
	mIofilename = _Iofilename;
	mFileName = _FileName;
}

CCmdWriteSleepCaseReceiver::~CCmdWriteSleepCaseReceiver() {
}

Json::Value CCmdWriteSleepCaseReceiver::Action() {
	Json::Value value;
	Json::Value ArgArray;
	char Shellbuf[4096];
	string tShellbuf;
	string mCmdIndexString;
	stringstream streamIndex, streamAddr, streamLength, streamSleepLBA;

	FILE *pp;

	if((pp=popen("sudo find /home/vli/debugfs/mmc0 -name myTestSleep","r")) == NULL){
		std::cout << "Popen() error: " << std::endl;
	}

	/*
	 * leading zeros   ex: 25 > 00025
	 * */
	streamIndex  << setfill('0') << setw(10) << mCmdname;
	streamAddr   << setfill('0') << setw(10) << mStartAdd;
	streamLength << setfill('0') << setw(10) << mBlkLength;
	streamSleepLBA << setfill('0') << setw(10) << mSleepLBA;

	switch (mCmdname) {	//Cases are mapping to the bjaxSend.html.
		case openEnd:					//0
			mCmdIndexString.assign("0000000095#");
			break;

		case preDefined_non_reliable:	//1
			mCmdIndexString.assign("0000000096#");
			break;

		case preDefined_reliable:		//2
			mCmdIndexString.assign("0000000097#");
			break;
	}

	mCmdIndexString.append(streamIndex.str());				// 00047#00000
	mCmdIndexString.append("#").append(streamAddr.str());	// 00047#00000#00000
	mCmdIndexString.append("#").append(streamLength.str()); // 00047#00000#00000#00001
	mCmdIndexString.append("#").append(streamSleepLBA.str()); // 00047#00000#00000#00001
	mCmdIndexString.append("#").append(mIofilename);		// 00047#00000#00000#00001#/var/www/cdsdc
	mCmdIndexString.append(" > ");

	tShellbuf.assign("echo ").append(mCmdIndexString).append(fgets(Shellbuf,sizeof(Shellbuf),pp));
	system(tShellbuf.c_str());

	system("echo QQQ > ~/Desktop/123");

	pclose(pp);

	ArgArray[0]= mStartAdd;
	ArgArray[1]= mBlkLength;

	ArgArray[2]= mSleepLBA;

	ArgArray[3]= mIofilename;


	value["CMDINDEX"] = mCmdname;
	value["Argument"] = ArgArray;
	value["ReadFileName"] = mFileName;

	return value;
}
