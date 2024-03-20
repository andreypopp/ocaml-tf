(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_snapshot_copy_grant = {
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  snapshot_copy_grant_name : string prop;
      (** snapshot_copy_grant_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_snapshot_copy_grant *)

let aws_redshift_snapshot_copy_grant ?id ?kms_key_id ?tags ?tags_all
    ~snapshot_copy_grant_name () : aws_redshift_snapshot_copy_grant =
  { id; kms_key_id; snapshot_copy_grant_name; tags; tags_all }

type t = {
  arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  snapshot_copy_grant_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?kms_key_id ?tags ?tags_all ~snapshot_copy_grant_name
    __id =
  let __type = "aws_redshift_snapshot_copy_grant" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       snapshot_copy_grant_name =
         Prop.computed __type __id "snapshot_copy_grant_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_snapshot_copy_grant
        (aws_redshift_snapshot_copy_grant ?id ?kms_key_id ?tags
           ?tags_all ~snapshot_copy_grant_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_id ?tags ?tags_all
    ~snapshot_copy_grant_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_id ?tags ?tags_all ~snapshot_copy_grant_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
