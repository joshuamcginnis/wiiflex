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
	import com.intuit.developer.QBTarget.business.fieldmaps.Games_FieldMap;
	import mx.collections.ArrayCollection;

	[Bindable]
	public class Games_DTO extends KingussieDTOBase implements IValueObject, IKingussieDTO
	{
		// Important Note:
		//    This class was automatically generated.  If you make changes to it and
		//    subsequently run the generator tool again, all changes will be overwritten!

		// Record Owner Dirty Bit
		public function get IDNIsRecordOwnerDirty():Boolean		{ return _isRecordOwnerDirty; }

		// Field value holding objects
		private var _rid:String;
		private var _isRecordOwnerDirty:Boolean = false;
		private var _TotalBullets:Number;
		private var _ShotsTaken:Number;
		private var _Hits:Number;
		private var _RelatedUser:Number;
		private var _DateCreated:Date;
		private var _DateModified:Date;
		private var _RecordId:String;
		private var _RecordOwner:QuickBaseUserDTO;
		private var _LastModifiedBy:QuickBaseUserDTO;

		// Current value getters
		public function get rid():String								{return _rid;}
		public function get TotalBullets():Number						{return _TotalBullets;}
		public function get ShotsTaken():Number							{return _ShotsTaken;}
		public function get Hits():Number								{return _Hits;}
		public function get RelatedUser():Number						{return _RelatedUser;}
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
		public function set TotalBullets(val:Number):void				{_TotalBullets = val;}
		public function set ShotsTaken(val:Number):void					{_ShotsTaken = val;}
		public function set Hits(val:Number):void						{_Hits = val;}
		public function set RelatedUser(val:Number):void				{_RelatedUser = val;}

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
		private function set IDNTotalBullets(val:String):void			{_TotalBullets = Number(val);}
		private function set IDNShotsTaken(val:String):void				{_ShotsTaken = Number(val);}
		private function set IDNHits(val:String):void					{_Hits = Number(val);}
		private function set IDNRelatedUser(val:String):void			{_RelatedUser = Number(val);}
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
		public function getInfoObj():IKingussieInfo						{return Games_Info.getInstance();}
		public function getFieldMapObj():IQuickBaseFieldMap				{return new Games_FieldMap();}
		public function getFieldMapClass():Class						{return Games_FieldMap;}
		public function get dtoClass():Class							{return Games_DTO;}

		// MetaData Information Objects getters
		public function get TotalBullets_Info():NumberField				{return Games_Info.getInstance().TotalBullets_Info;}
		public function get ShotsTaken_Info():NumberField				{return Games_Info.getInstance().ShotsTaken_Info;}
		public function get Hits_Info():NumberField						{return Games_Info.getInstance().Hits_Info;}
		public function get RelatedUser_Info():NumberField				{return Games_Info.getInstance().RelatedUser_Info;}
		public function get DateCreated_Info():TimeStampField			{return Games_Info.getInstance().DateCreated_Info;}
		public function get DateModified_Info():TimeStampField			{return Games_Info.getInstance().DateModified_Info;}
		public function get RecordId_Info():RecordIdField				{return Games_Info.getInstance().RecordId_Info;}
		public function get RecordOwner_Info():UserIdField				{return Games_Info.getInstance().RecordOwner_Info;}
		public function get LastModifiedBy_Info():UserIdField			{return Games_Info.getInstance().LastModifiedBy_Info;}

	}
}
