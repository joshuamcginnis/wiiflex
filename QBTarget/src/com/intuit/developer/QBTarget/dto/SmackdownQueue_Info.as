package com.intuit.developer.QBTarget.dto
{
	import com.adobe.cairngorm.vo.IValueObject;
	import com.quickbase.idn.dto.IKingussieInfo;
	import com.quickbase.idn.fieldtypes.*;
	import com.quickbase.idn.fieldtypes.bool.*;
	import com.quickbase.idn.fieldtypes.float.*;
	import com.quickbase.idn.fieldtypes.int32.*;
	import com.quickbase.idn.fieldtypes.int64.*;
	import com.quickbase.idn.fieldtypes.text.*;
	import mx.collections.ArrayCollection;

	public class SmackdownQueue_Info implements IKingussieInfo
	{
		// Important Note:
		//    This class was automatically generated.  If you make changes to it and
		//    subsequently run the generator tool again, all changes will be overwritten!

		private static var _instance:SmackdownQueue_Info = null;

		function SmackdownQueue_Info(forcePrivateClass:Private)
		{
			// MetaData Initializers
			var field:FieldDescriptor;

			field = new FieldDescriptor();
			field.commaStart = 0;
			field.lusFid = 0;
			field.unique = false;
			field.blankIsZero = true;
			field.fieldType = ENFieldType.Float;
			field.required = false;
			field.doesDataCopy = true;
			field.carryChoices = true;
			field.lutFid = 0;
			field.mode = ENMode.NotFound;
			field.units = "";
			field.findEnabled = true;
			field.fieldName = "RelatedPlayer";
			field.formula = "";
			field.tableName = "SmackdownQueue";
			field.baseType = ENBaseType.Float;
			field.allowNewChoices = false;
			field.decimalPlaces = 0;
			field.label = "Related Player";
			field.foreignKey = 0;
			field.role = ENRole.NotFound;
			field.fieldHelp = "";
			field.fid = 6;
			_RelatedPlayerInfo = new NumberField(field);
			_fieldInfo.addItem(_RelatedPlayerInfo);

			field = new FieldDescriptor();
			field.commaStart = 0;
			field.lusFid = 0;
			field.unique = false;
			field.blankIsZero = true;
			field.fieldType = ENFieldType.Float;
			field.required = false;
			field.doesDataCopy = true;
			field.carryChoices = true;
			field.lutFid = 0;
			field.mode = ENMode.NotFound;
			field.units = "";
			field.findEnabled = true;
			field.fieldName = "RelatedSmackdown";
			field.formula = "";
			field.tableName = "SmackdownQueue";
			field.baseType = ENBaseType.Float;
			field.allowNewChoices = false;
			field.decimalPlaces = 0;
			field.label = "Related Smackdown";
			field.foreignKey = 0;
			field.role = ENRole.NotFound;
			field.fieldHelp = "";
			field.fid = 7;
			_RelatedSmackdownInfo = new NumberField(field);
			_fieldInfo.addItem(_RelatedSmackdownInfo);

			field = new FieldDescriptor();
			field.lusFid = 0;
			field.unique = false;
			field.fieldType = ENFieldType.TimeStamp;
			field.required = false;
			field.doesDataCopy = false;
			field.carryChoices = true;
			field.lutFid = 0;
			field.mode = ENMode.NotFound;
			field.findEnabled = false;
			field.fieldName = "DateCreated";
			field.tableName = "SmackdownQueue";
			field.baseType = ENBaseType.Int64;
			field.allowNewChoices = false;
			field.label = "Date Created";
			field.foreignKey = 0;
			field.role = ENRole.Created;
			field.fieldHelp = "";
			field.fid = 1;
			_DateCreatedInfo = new TimeStampField(field);
			_fieldInfo.addItem(_DateCreatedInfo);

			field = new FieldDescriptor();
			field.lusFid = 0;
			field.unique = false;
			field.fieldType = ENFieldType.TimeStamp;
			field.required = false;
			field.doesDataCopy = false;
			field.carryChoices = true;
			field.lutFid = 0;
			field.mode = ENMode.NotFound;
			field.findEnabled = false;
			field.fieldName = "DateModified";
			field.tableName = "SmackdownQueue";
			field.baseType = ENBaseType.Int64;
			field.allowNewChoices = false;
			field.label = "Date Modified";
			field.foreignKey = 0;
			field.role = ENRole.Modifed;
			field.fieldHelp = "";
			field.fid = 2;
			_DateModifiedInfo = new TimeStampField(field);
			_fieldInfo.addItem(_DateModifiedInfo);

			field = new FieldDescriptor();
			field.lusFid = 0;
			field.unique = true;
			field.fieldType = ENFieldType.RecordId;
			field.required = false;
			field.doesDataCopy = false;
			field.carryChoices = true;
			field.lutFid = 0;
			field.mode = ENMode.Virtual;
			field.findEnabled = true;
			field.fieldName = "RecordId";
			field.tableName = "SmackdownQueue";
			field.baseType = ENBaseType.Int32;
			field.allowNewChoices = false;
			field.label = "Record ID#";
			field.foreignKey = 0;
			field.role = ENRole.RecordId;
			field.fieldHelp = "";
			field.fid = 3;
			_RecordIdInfo = new RecordIdField(field);
			_fieldInfo.addItem(_RecordIdInfo);

			field = new FieldDescriptor();
			field.lusFid = 0;
			field.unique = false;
			field.fieldType = ENFieldType.UserId;
			field.required = false;
			field.doesDataCopy = false;
			field.carryChoices = true;
			field.lutFid = 0;
			field.mode = ENMode.NotFound;
			field.findEnabled = true;
			field.fieldName = "RecordOwner";
			field.tableName = "SmackdownQueue";
			field.baseType = ENBaseType.Int32;
			field.allowNewChoices = true;
			field.label = "Record Owner";
			field.foreignKey = 0;
			field.role = ENRole.Owner;
			field.fieldHelp = "";
			field.fid = 4;
			_RecordOwnerInfo = new UserIdField(field);
			_fieldInfo.addItem(_RecordOwnerInfo);

			field = new FieldDescriptor();
			field.lusFid = 0;
			field.unique = false;
			field.fieldType = ENFieldType.UserId;
			field.required = false;
			field.doesDataCopy = false;
			field.carryChoices = true;
			field.lutFid = 0;
			field.mode = ENMode.NotFound;
			field.findEnabled = true;
			field.fieldName = "LastModifiedBy";
			field.tableName = "SmackdownQueue";
			field.baseType = ENBaseType.Int32;
			field.allowNewChoices = true;
			field.label = "Last Modified By";
			field.foreignKey = 0;
			field.role = ENRole.Modifier;
			field.fieldHelp = "";
			field.fid = 5;
			_LastModifiedByInfo = new UserIdField(field);
			_fieldInfo.addItem(_LastModifiedByInfo);

		}

		public static function getInstance():SmackdownQueue_Info
		{
			if(_instance == null)
				_instance = new SmackdownQueue_Info(new Private);
			return _instance;
		}

		public function get tableName():String
		{
			return "SmackdownQueue";
		}

		public function getFieldInfo(name:String):AbstractField
		{
			return this[name + "_Info"];
		}

		// MetaData Information Objects
		private var _RelatedPlayerInfo:NumberField;
		private var _RelatedSmackdownInfo:NumberField;
		private var _DateCreatedInfo:TimeStampField;
		private var _DateModifiedInfo:TimeStampField;
		private var _RecordIdInfo:RecordIdField;
		private var _RecordOwnerInfo:UserIdField;
		private var _LastModifiedByInfo:UserIdField;

		// MetaData Information Objects getters
		public function get RelatedPlayer_Info():NumberField			{return _RelatedPlayerInfo;}
		public function get RelatedSmackdown_Info():NumberField			{return _RelatedSmackdownInfo;}
		public function get DateCreated_Info():TimeStampField			{return _DateCreatedInfo;}
		public function get DateModified_Info():TimeStampField			{return _DateModifiedInfo;}
		public function get RecordId_Info():RecordIdField				{return _RecordIdInfo;}
		public function get RecordOwner_Info():UserIdField				{return _RecordOwnerInfo;}
		public function get LastModifiedBy_Info():UserIdField			{return _LastModifiedByInfo;}

		// Field getter variables
		private var _fieldNames:ArrayCollection = new ArrayCollection(["RelatedPlayer", "RelatedSmackdown", "DateCreated", 
																		"DateModified", "RecordId", "RecordOwner", "LastModifiedBy", ]);
		private var _fieldInfo:ArrayCollection = new ArrayCollection();

		// Field getters
		public function get FieldNames():ArrayCollection				{return _fieldNames;}
		public function get FieldsInfo():ArrayCollection				{return _fieldInfo;}
	}
}

class Private{}
