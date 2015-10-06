

#ifndef CWRITESLEEPCASEHANDLER_H_
#define CWRITESLEEPCASEHANDLER_H_

#include "CHandler.h"
#include "../../CommandType/header/CCmdWriteSleepCaseReceiver.h"
#include "../../header/CConcreteCommand.h"

class CWriteSleepCaseHandler: public CHandler {
public:
	CWriteSleepCaseHandler(CConcreteCommandAct *_pAct,IUpdateStatus *_pUpdateStatu);
	virtual ~CWriteSleepCaseHandler();
	int getCommandType();
	void genCommand(Json::Value value);
};

#endif
