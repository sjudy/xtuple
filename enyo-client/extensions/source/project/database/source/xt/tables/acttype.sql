insert into xt.acttype (
  acttype_nsname,
  acttype_tblname,
  acttype_code,
  acttype_col_uuid,
  acttype_col_editor_key,
  acttype_col_type,
  acttype_col_name,
  acttype_col_active,
  acttype_col_status,
  acttype_col_priority_id, 
  acttype_col_description,
  acttype_col_owner_username,
  acttype_col_assigned_username,
  acttype_col_start_date,
  acttype_col_due_date,
  acttype_col_assigned_date,
  acttype_col_completed_Date,
  acttype_col_parent_uuid,
  acttype_join
) values (
  'public',
  'prj',
  'Project',
  'obj_uuid',
  'prj_number::text',
  'acttype_code',
  'prj_number',
  'prj_status != ''C''',
  'prj_status',
  'prjext_priority_id',
  'prj_name',
  'prj_owner_username',
  'prj_username',
  'prj_start_date',
  'prj_due_date',
  'prj_assigned_date',
  'prj_completed_date',
  'null::uuid',
  'join xt.prjext on prj_id=prjext_id'
);

insert into xt.acttype (
  acttype_nsname,
  acttype_tblname,
  acttype_code,
  acttype_col_uuid,
  acttype_col_editor_key,
  acttype_col_type,
  acttype_col_name,
  acttype_col_active,
  acttype_col_status,
  acttype_col_priority_id, 
  acttype_col_description,
  acttype_col_owner_username,
  acttype_col_assigned_username,
  acttype_col_start_date,
  acttype_col_due_date,
  acttype_col_assigned_date,
  acttype_col_completed_Date,
  acttype_col_parent_uuid,
  acttype_join
) values (
  'public',
  'prjtask',
  'ProjectTask',
  'prjtask.obj_uuid',
  'prj_number::text',
  'acttype_code',
  'prjtask_number',
  'prjtask_status != ''C''',
  'prjtask_status',
  'prjtaskext_priority_id',
  'prjtask_name',
  'prjtask_owner_username',
  'prjtask_username',
  'prjtask_start_date',
  'prjtask_due_date',
  'prjtask_assigned_date',
  'prjtask_completed_date',
  'prj.obj_uuid::uuid',
  'join xt.prjtaskext on prjtaskext_id=prjtask_id join prj on prj_id=prjtask_prj_id'
);

insert into xt.acttype (
  acttype_nsname,
  acttype_tblname,
  acttype_code,
  acttype_col_uuid,
  acttype_col_editor_key,
  acttype_col_type,
  acttype_col_name,
  acttype_col_active,
  acttype_col_status,
  acttype_col_priority_id, 
  acttype_col_description,
  acttype_col_owner_username,
  acttype_col_assigned_username,
  acttype_col_start_date,
  acttype_col_due_date,
  acttype_col_assigned_date,
  acttype_col_completed_Date,
  acttype_col_parent_uuid,
  acttype_join
) values (
  'xt',
  'prjwf',
  'ProjectWorkflow',
  'prjwf.obj_uuid',
  'prj_number::text',
  'acttype_code',
  'prj_number',
  'wf_status = ''I''',
  'wf_status',
  'wf_priority_id',
  'wf_name',
  'wf_owner_username',
  'wf_assigned_username',
  'wf_start_date',
  'wf_due_date',
  'wf_assigned_date',
  'wf_completed_date',
  'prj.obj_uuid::uuid',
  'join prj on prj.obj_uuid=wf_parent_uuid'
);
