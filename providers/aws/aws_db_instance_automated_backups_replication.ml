(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_db_instance_automated_backups_replication = {
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  pre_signed_url : string prop option; [@option]
      (** pre_signed_url *)
  retention_period : float prop option; [@option]
      (** retention_period *)
  source_db_instance_arn : string prop;
      (** source_db_instance_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_db_instance_automated_backups_replication *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_db_instance_automated_backups_replication ?id ?kms_key_id
    ?pre_signed_url ?retention_period ?timeouts
    ~source_db_instance_arn () :
    aws_db_instance_automated_backups_replication =
  {
    id;
    kms_key_id;
    pre_signed_url;
    retention_period;
    source_db_instance_arn;
    timeouts;
  }

type t = {
  id : string prop;
  kms_key_id : string prop;
  pre_signed_url : string prop;
  retention_period : float prop;
  source_db_instance_arn : string prop;
}

let make ?id ?kms_key_id ?pre_signed_url ?retention_period ?timeouts
    ~source_db_instance_arn __id =
  let __type = "aws_db_instance_automated_backups_replication" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       pre_signed_url = Prop.computed __type __id "pre_signed_url";
       retention_period =
         Prop.computed __type __id "retention_period";
       source_db_instance_arn =
         Prop.computed __type __id "source_db_instance_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_instance_automated_backups_replication
        (aws_db_instance_automated_backups_replication ?id
           ?kms_key_id ?pre_signed_url ?retention_period ?timeouts
           ~source_db_instance_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_id ?pre_signed_url
    ?retention_period ?timeouts ~source_db_instance_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_id ?pre_signed_url ?retention_period ?timeouts
      ~source_db_instance_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
