package com.intuit.developer.QBTarget.dto
{
	import com.adobe.cairngorm.vo.IValueObject;
	import com.adobe.cairngorm.CairngormError;
	import com.quickbase.idn.fieldtypes.*;
	import com.quickbase.idn.fieldtypes.bool.*;
	import com.quickbase.idn.fieldtypes.float.*;
	import com.quickbase.idn.fieldtypes.int32.*;
	import com.quickbase.idn.fieldtypes.int64.*;
	import com.quickbase.idn.fieldtypes.text.*;
    import com.quickbase.idn.business.fieldmaps.IQuickBaseFieldMap;
	import com.quickbase.idn.dto.IKingussieDTO;
	import com.quickbase.idn.dto.KingussieDTOBase;
	import com.quickbase.idn.dto.IKingussieInfo;
	import com.quickbase.idn.dto.QuickBaseUserDTO;
	import com.quickbase.idn.dto.QuickBaseFileDTO;
	import com.quickbase.idn.model.QuickBaseMSAModel;
	import com.intuit.developer.QBTarget.business.fieldmaps.Smackdowns_FieldMap;
	import mx.collections.ArrayCollection;

	[Bindable]
	public class Smackdowns_DTO extends KingussieDTOBase implements IValueObject, IKingussieDTO
	{
		// Important Note:
		//    This class was automatically generated.  If you make changes to it and
		//    subsequently run the generator tool again, all changes will be overwritten!

		// Record Owner Dirty Bit
		public function get IDNIsRecordOwnerDirty():Boolean		{ return _isRecordOwnerDirty; }

		// Field value holding objects
		private var _rid:String;
		private var _isRecordOwnerDirty:Boolean = false;
		private var _Smackdown:String;
		private var _Entries:String;
		private var _AddEntry:String;
		private var _DateCreated:Date;
		private var _DateModified:Date;
		private var _RecordId:String;
		private var _RecordOwner:QuickBaseUserDTO;
		private var _LastModifiedBy:QuickBaseUserDTO;

		// Current value getters
		public function get rid():String								{return _rid;}
		public function get Smackdown():String							{return _Smackdown;}
		public function get Entries():String							{return _Entries;}
		public function get AddEntry():String							{return _AddEntry;}
		public function get DateCreated():Date							{return _DateCreated;}
		public function get DateModified():Date							{return _DateModified;}
		public function get RecordId():String							{return _rid;}
		public function get RecordOwner():QuickBaseUserDTO 				{return _RecordOwner;}
		public function get LastModifiedBy():QuickBaseUserDTO 			{return _LastModifiedBy;}

		// Choice getters

		// Current value setters
		public function set RecordOwner(val:QuickBaseUserDTO):void
		{
			if (_RecordOwner == val)  return;
			var model:QuickBaseMSAModel = QuickBaseMSAModel.getInstance();
			if (model.currentUser == null || !model.currentUser.isAdministrator()) {
				throw new Error("Cannot set record owner if not in the Adminstrator role");
			}
			_RecordOwner = val;
			_isRecordOwnerDirty = true;
		}
		public function set Smackdown(val:String):void					{_Smackdown = val;}

		// Framework value setters
		/**
		 *
		 * @private
		 *
		 */
		public override function IDNSet(fieldName:String, val:String):void
		{
			this["IDN"+fieldName] = val;
		}

		private function set IDNrid(val:String):void						{_rid = val;}
		private function set IDNSmackdown(val:String):void				{_Smackdown = val;}
		private function set IDNEntries(val:String):void				{_Entries = val;}
		private function set IDNAddEntry(val:String):void				{_AddEntry = val;}
		private function set IDNDateCreated(val:String):void			{_DateCreated = new Date(Number(val));}
		private function set IDNDateModified(val:String):void			{_DateModified = new Date(Number(val));}
		private function set IDNRecordId(val:String):void				{_RecordId = val;}
		private function set IDNRecordOwner(val:String):void
		{
			var model:QuickBaseMSAModel = QuickBaseMSAModel.getInstance();
			_RecordOwner = model.appUserList.findUserID(val);
		}
		private function set IDNLastModifiedBy(val:String):void
		{
			var model:QuickBaseMSAModel = QuickBaseMSAModel.getInstance();
			_LastModifiedBy = model.appUserList.findUserID(val);
		}

		// Object getters
		public function getInfoObj():IKingussieInfo						{return Smackdowns_Info.getInstance();}
		public function getFieldMapObj():IQuickBaseFieldMap				{return new Smackdowns_FieldMap();}
		public function getFieldMapClass():Class						{return Smackdowns_FieldMap;}
		public function get dtoClass():Class							{return Smackdowns_DTO;}

		// MetaData Information Objects getters
		public function get Smackdown_Info():TextField					{return Smackdowns_Info.getInstance().Smackdown_Info;}
		public function get Entries_Info():DbLinkField					{return Smackdowns_Info.getInstance().Entries_Info;}
		public function get AddEntry_Info():URLField					{return Smackdowns_Info.getInstance().AddEntry_Info;}
		public function get DateCreated_Info():TimeStampField			{return Smackdowns_Info.getInstance().DateCreated_Info;}
		public function get DateModified_Info():TimeStampField			{return Smackdowns_Info.getInstance().DateModified_Info;}
		public function get RecordId_Info():RecordIdField				{return Smackdowns_Info.getInstance().RecordId_Info;}
		public function get RecordOwner_Info():UserIdField				{return Smackdowns_Info.getInstance().RecordOwner_Info;}
		public function get LastModifiedBy_Info():UserIdField			{return Smackdowns_Info.getInstance().LastModifiedBy_Info;}

	}
}
