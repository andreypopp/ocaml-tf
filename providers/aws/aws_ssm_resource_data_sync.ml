(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s3_destination = {
  bucket_name : string prop;  (** bucket_name *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  prefix : string prop option; [@option]  (** prefix *)
  region : string prop;  (** region *)
  sync_format : string prop option; [@option]  (** sync_format *)
}
[@@deriving yojson_of]
(** s3_destination *)

type aws_ssm_resource_data_sync = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  s3_destination : s3_destination list;
}
[@@deriving yojson_of]
(** aws_ssm_resource_data_sync *)

let s3_destination ?kms_key_arn ?prefix ?sync_format ~bucket_name
    ~region () : s3_destination =
  { bucket_name; kms_key_arn; prefix; region; sync_format }

let aws_ssm_resource_data_sync ?id ~name ~s3_destination () :
    aws_ssm_resource_data_sync =
  { id; name; s3_destination }

type t = { id : string prop; name : string prop }

let make ?id ~name ~s3_destination __id =
  let __type = "aws_ssm_resource_data_sync" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_resource_data_sync
        (aws_ssm_resource_data_sync ?id ~name ~s3_destination ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~s3_destination __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~s3_destination __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
