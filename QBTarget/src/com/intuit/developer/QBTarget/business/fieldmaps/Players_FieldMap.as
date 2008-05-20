package com.intuit.developer.QBTarget.business.fieldmaps
{
	import com.quickbase.idn.business.fieldmaps.QuickBaseFieldMap;
	import com.quickbase.idn.business.fieldmaps.IQuickBaseFieldMap;

	public class Players_FieldMap extends QuickBaseFieldMap implements IQuickBaseFieldMap
	{
		// Important Note:
		//    This class was automatically generated.  If you make changes to it and
		//    subsequently run the generator tool again, all changes will be overwritten!

		public function Players_FieldMap()
		{
			super();
		}

		protected override function loadFids():void
		{
			columnFids.User = 12;
			columnFids.Name = 6;
			columnFids.Avitar = 7;
			columnFids.Games = 8;
			columnFids.AddGame = 9;
			columnFids.Entries = 10;
			columnFids.AddEntry = 11;
			columnFids.DateCreated = 1;
			columnFids.DateModified = 2;
			columnFids.rid = 3;
			columnFids.RecordOwner = 4;
			columnFids.LastModifiedBy = 5;

		}

		protected override function loadRequiredColumns():void
		{
			requiredColumns.addItem("rid");
		}
	}
}
