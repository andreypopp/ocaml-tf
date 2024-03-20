(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_access_grants_location = {
  account_id : string prop option; [@option]  (** account_id *)
  iam_role_arn : string prop;  (** iam_role_arn *)
  location_scope : string prop;  (** location_scope *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3control_access_grants_location *)

let aws_s3control_access_grants_location ?account_id ?tags
    ~iam_role_arn ~location_scope () :
    aws_s3control_access_grants_location =
  { account_id; iam_role_arn; location_scope; tags }

type t = {
  access_grants_location_arn : string prop;
  access_grants_location_id : string prop;
  account_id : string prop;
  iam_role_arn : string prop;
  id : string prop;
  location_scope : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?account_id ?tags ~iam_role_arn ~location_scope __id =
  let __type = "aws_s3control_access_grants_location" in
  let __attrs =
    ({
       access_grants_location_arn =
         Prop.computed __type __id "access_grants_location_arn";
       access_grants_location_id =
         Prop.computed __type __id "access_grants_location_id";
       account_id = Prop.computed __type __id "account_id";
       iam_role_arn = Prop.computed __type __id "iam_role_arn";
       id = Prop.computed __type __id "id";
       location_scope = Prop.computed __type __id "location_scope";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_access_grants_location
        (aws_s3control_access_grants_location ?account_id ?tags
           ~iam_role_arn ~location_scope ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?tags ~iam_role_arn
    ~location_scope __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?tags ~iam_role_arn ~location_scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
