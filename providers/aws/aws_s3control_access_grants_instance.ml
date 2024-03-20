(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_access_grants_instance = {
  account_id : string prop option; [@option]  (** account_id *)
  identity_center_arn : string prop option; [@option]
      (** identity_center_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3control_access_grants_instance *)

let aws_s3control_access_grants_instance ?account_id
    ?identity_center_arn ?tags () :
    aws_s3control_access_grants_instance =
  { account_id; identity_center_arn; tags }

type t = {
  access_grants_instance_arn : string prop;
  access_grants_instance_id : string prop;
  account_id : string prop;
  id : string prop;
  identity_center_application_arn : string prop;
  identity_center_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?account_id ?identity_center_arn ?tags __id =
  let __type = "aws_s3control_access_grants_instance" in
  let __attrs =
    ({
       access_grants_instance_arn =
         Prop.computed __type __id "access_grants_instance_arn";
       access_grants_instance_id =
         Prop.computed __type __id "access_grants_instance_id";
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       identity_center_application_arn =
         Prop.computed __type __id "identity_center_application_arn";
       identity_center_arn =
         Prop.computed __type __id "identity_center_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_access_grants_instance
        (aws_s3control_access_grants_instance ?account_id
           ?identity_center_arn ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?identity_center_arn ?tags __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?identity_center_arn ?tags __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
