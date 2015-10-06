/*
 * CCmdWriteSleepCaseReceiver.h
 *
 *  Created on: Feb 25, 2015
 *      Author: vli
 */

#ifndef COMMANDTYPE_CCMDWRITESLEEPCASERECEIVER_H_
#define COMMANDTYPE_CCMDWRITESLEEPCASERECEIVER_H_

#include "IReceiver.h"

class CCmdWriteSleepCaseReceiver: public IReceiver {
private:
	int mCmdname;;
	int mStartAdd;
	int mBlkLength;
	int mSleepLBA;
	std::string mIofilename;
	std::string mFileName;
public:
	CCmdWriteSleepCaseReceiver(int, int, int, int, std::string ,std::string);
	virtual ~CCmdWriteSleepCaseReceiver();
	Json::Value Action();
};

#endif
