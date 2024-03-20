(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination = {
  availability_zone_name : string prop option; [@option]
      (** availability_zone_name *)
  file_system_id : string prop option; [@option]
      (** file_system_id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** destination *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_efs_replication_configuration = {
  id : string prop option; [@option]  (** id *)
  source_file_system_id : string prop;  (** source_file_system_id *)
  destination : destination list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_efs_replication_configuration *)

let destination ?availability_zone_name ?file_system_id ?kms_key_id
    ?region () : destination =
  { availability_zone_name; file_system_id; kms_key_id; region }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_efs_replication_configuration ?id ?timeouts
    ~source_file_system_id ~destination () :
    aws_efs_replication_configuration =
  { id; source_file_system_id; destination; timeouts }

type t = {
  creation_time : string prop;
  id : string prop;
  original_source_file_system_arn : string prop;
  source_file_system_arn : string prop;
  source_file_system_id : string prop;
  source_file_system_region : string prop;
}

let make ?id ?timeouts ~source_file_system_id ~destination __id =
  let __type = "aws_efs_replication_configuration" in
  let __attrs =
    ({
       creation_time = Prop.computed __type __id "creation_time";
       id = Prop.computed __type __id "id";
       original_source_file_system_arn =
         Prop.computed __type __id "original_source_file_system_arn";
       source_file_system_arn =
         Prop.computed __type __id "source_file_system_arn";
       source_file_system_id =
         Prop.computed __type __id "source_file_system_id";
       source_file_system_region =
         Prop.computed __type __id "source_file_system_region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_efs_replication_configuration
        (aws_efs_replication_configuration ?id ?timeouts
           ~source_file_system_id ~destination ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~source_file_system_id
    ~destination __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~source_file_system_id ~destination __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
