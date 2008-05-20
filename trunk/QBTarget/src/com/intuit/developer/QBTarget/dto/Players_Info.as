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

	public class Players_Info implements IKingussieInfo
	{
		// Important Note:
		//    This class was automatically generated.  If you make changes to it and
		//    subsequently run the generator tool again, all changes will be overwritten!

		private static var _instance:Players_Info = null;

		function Players_Info(forcePrivateClass:Private)
		{
			// MetaData Initializers
			var field:FieldDescriptor;

			field = new FieldDescriptor();
			field.lusFid = 0;
			field.unique = false;
			field.width = 40;
			field.appendOnly = false;
			field.fieldType = ENFieldType.Text;
			field.required = false;
			field.doesDataCopy = true;
			field.carryChoices = true;
			field.lutFid = 0;
			field.mode = ENMode.NotFound;
			field.findEnabled = true;
			field.fieldName = "Name";
			field.formula = "";
			field.tableName = "Players";
			field.baseType = ENBaseType.Text;
			field.allowNewChoices = false;
			field.label = "Name";
			field.foreignKey = 0;
			field.allowHTML = false;
			field.role = ENRole.NotFound;
			field.fieldHelp = "";
			field.fid = 6;
			field.numLines = 1;
			_NameInfo = new TextField(field);
			_fieldInfo.addItem(_NameInfo);

			field = new FieldDescriptor();
			field.lusFid = 0;
			field.unique = false;
			field.fieldType = ENFieldType.File;
			field.required = false;
			field.doesDataCopy = false;
			field.carryChoices = true;
			field.lutFid = 0;
			field.mode = ENMode.NotFound;
			field.findEnabled = true;
			field.fieldName = "Avitar";
			field.tableName = "Players";
			field.baseType = ENBaseType.Text;
			field.allowNewChoices = false;
			field.maxVersions = 3;
			field.label = "Avitar";
			field.foreignKey = 0;
			field.role = ENRole.NotFound;
			field.fieldHelp = "";
			field.fid = 7;
			_AvitarInfo = new FileField(field);
			_fieldInfo.addItem(_AvitarInfo);

			field = new FieldDescriptor();
			field.targetFID = 9;
			field.lusFid = 0;
			field.unique = false;
			field.fieldType = ENFieldType.DbLink;
			field.required = false;
			field.doesDataCopy = false;
			field.carryChoices = true;
			field.targetDBID = "bdh6fi8xj";
			field.lutFid = 0;
			field.mode = ENMode.Virtual;
			field.sourceFID = 3;
			field.findEnabled = true;
			field.fieldName = "Games";
			field.tableName = "Players";
			field.baseType = ENBaseType.Text;
			field.exact = true;
			field.allowNewChoices = false;
			field.label = "Games";
			field.foreignKey = 0;
			field.role = ENRole.NotFound;
			field.fieldHelp = "";
			field.fid = 8;
			field.coverText = "Games";
			_GamesInfo = new DbLinkField(field);
			_fieldInfo.addItem(_GamesInfo);

			field = new FieldDescriptor();
			field.lusFid = 0;
			field.unique = false;
			field.appearsAs = "Add  Game";
			field.fieldType = ENFieldType.URL;
			field.required = false;
			field.doesDataCopy = false;
			field.carryChoices = true;
			field.lutFid = 0;
			field.mode = ENMode.Virtual;
			field.findEnabled = false;
			field.fieldName = "AddGame";
			field.formula = "URLRoot() & \"db/\" & [_DBID_GAMES] & \"?a=API_GenAddRecordForm&_fid_9=\" & URLEncode ([Record ID#])& \"&z=\" & Rurl()";
			field.tableName = "Players";
			field.baseType = ENBaseType.Text;
			field.allowNewChoices = false;
			field.label = "Add Game";
			field.foreignKey = 0;
			field.role = ENRole.NotFound;
			field.fieldHelp = "";
			field.fid = 9;
			_AddGameInfo = new URLField(field);
			_fieldInfo.addItem(_AddGameInfo);

			field = new FieldDescriptor();
			field.targetFID = 6;
			field.lusFid = 0;
			field.unique = false;
			field.fieldType = ENFieldType.DbLink;
			field.required = false;
			field.doesDataCopy = false;
			field.carryChoices = true;
			field.targetDBID = "bdh6fi8xm";
			field.lutFid = 0;
			field.mode = ENMode.Virtual;
			field.sourceFID = 3;
			field.findEnabled = true;
			field.fieldName = "Entries";
			field.tableName = "Players";
			field.baseType = ENBaseType.Text;
			field.exact = true;
			field.allowNewChoices = false;
			field.label = "Entries";
			field.foreignKey = 0;
			field.role = ENRole.NotFound;
			field.fieldHelp = "";
			field.fid = 10;
			field.coverText = "Entries";
			_EntriesInfo = new DbLinkField(field);
			_fieldInfo.addItem(_EntriesInfo);

			field = new FieldDescriptor();
			field.lusFid = 0;
			field.unique = false;
			field.appearsAs = "Add  Entry";
			field.fieldType = ENFieldType.URL;
			field.required = false;
			field.doesDataCopy = false;
			field.carryChoices = true;
			field.lutFid = 0;
			field.mode = ENMode.Virtual;
			field.findEnabled = false;
			field.fieldName = "AddEntry";
			field.formula = "URLRoot() & \"db/\" & [_DBID_ENTRIES] & \"?a=API_GenAddRecordForm&_fid_6=\" & URLEncode ([Record ID#])& \"&z=\" & Rurl()";
			field.tableName = "Players";
			field.baseType = ENBaseType.Text;
			field.allowNewChoices = false;
			field.label = "Add Entry";
			field.foreignKey = 0;
			field.role = ENRole.NotFound;
			field.fieldHelp = "";
			field.fid = 11;
			_AddEntryInfo = new URLField(field);
			_fieldInfo.addItem(_AddEntryInfo);

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
			field.tableName = "Players";
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
			field.tableName = "Players";
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
			field.tableName = "Players";
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
			field.tableName = "Players";
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
			field.tableName = "Players";
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

		public static function getInstance():Players_Info
		{
			if(_instance == null)
				_instance = new Players_Info(new Private);
			return _instance;
		}

		public function get tableName():String
		{
			return "Players";
		}

		public function getFieldInfo(name:String):AbstractField
		{
			return this[name + "_Info"];
		}

		// MetaData Information Objects
		private var _NameInfo:TextField;
		private var _AvitarInfo:FileField;
		private var _GamesInfo:DbLinkField;
		private var _AddGameInfo:URLField;
		private var _EntriesInfo:DbLinkField;
		private var _AddEntryInfo:URLField;
		private var _DateCreatedInfo:TimeStampField;
		private var _DateModifiedInfo:TimeStampField;
		private var _RecordIdInfo:RecordIdField;
		private var _RecordOwnerInfo:UserIdField;
		private var _LastModifiedByInfo:UserIdField;

		// MetaData Information Objects getters
		public function get Name_Info():TextField						{return _NameInfo;}
		public function get Avitar_Info():FileField						{return _AvitarInfo;}
		public function get Games_Info():DbLinkField					{return _GamesInfo;}
		public function get AddGame_Info():URLField						{return _AddGameInfo;}
		public function get Entries_Info():DbLinkField					{return _EntriesInfo;}
		public function get AddEntry_Info():URLField					{return _AddEntryInfo;}
		public function get DateCreated_Info():TimeStampField			{return _DateCreatedInfo;}
		public function get DateModified_Info():TimeStampField			{return _DateModifiedInfo;}
		public function get RecordId_Info():RecordIdField				{return _RecordIdInfo;}
		public function get RecordOwner_Info():UserIdField				{return _RecordOwnerInfo;}
		public function get LastModifiedBy_Info():UserIdField			{return _LastModifiedByInfo;}

		// Field getter variables
		private var _fieldNames:ArrayCollection = new ArrayCollection(["Name", "Avitar", "Games", "AddGame", "Entries", "AddEntry", 
																		"DateCreated", "DateModified", "RecordId", "RecordOwner", "LastModifiedBy", ]);
		private var _fieldInfo:ArrayCollection = new ArrayCollection();

		// Field getters
		public function get FieldNames():ArrayCollection				{return _fieldNames;}
		public function get FieldsInfo():ArrayCollection				{return _fieldInfo;}
	}
}

class Private{}
