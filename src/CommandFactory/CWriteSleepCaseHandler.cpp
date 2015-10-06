/*
 * CType3CommandHandler.cpp
 *
 *  Created on: Feb 25, 2015
 *      Author: vli
 */

#include "header/CWriteSleepCaseHandler.h"

CWriteSleepCaseHandler::CWriteSleepCaseHandler(CConcreteCommandAct *_pAct,IUpdateStatus *_pUpdateStatu) :
CHandler(_pAct,_pUpdateStatu)  {
	// TODO Auto-generated constructor stub

}

CWriteSleepCaseHandler::~CWriteSleepCaseHandler() {
	// TODO Auto-generated destructor stub
}

int CWriteSleepCaseHandler::getCommandType() {
	// TODO Auto-generated destructor stub
	return writeSleepCase;
}

void CWriteSleepCaseHandler::genCommand(Json::Value _value) {
	const Json::Value ArgArray = _value["Argument"];

	pCmdRecever = new CCmdWriteSleepCaseReceiver(_value["CMDINDEX"].asInt(),
														ArgArray[0].asInt(),
														ArgArray[1].asInt(),
														ArgArray[2].asInt(),
														ArgArray[3].asCString(),_value["ReadFileName"].asCString());
	pCommand = new CConcreteCommand(this->getCommandAct(),pCmdRecever,this->getUpdateStatus());
}
