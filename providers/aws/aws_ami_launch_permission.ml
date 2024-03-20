(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ami_launch_permission = {
  account_id : string prop option; [@option]  (** account_id *)
  group : string prop option; [@option]  (** group *)
  id : string prop option; [@option]  (** id *)
  image_id : string prop;  (** image_id *)
  organization_arn : string prop option; [@option]
      (** organization_arn *)
  organizational_unit_arn : string prop option; [@option]
      (** organizational_unit_arn *)
}
[@@deriving yojson_of]
(** aws_ami_launch_permission *)

let aws_ami_launch_permission ?account_id ?group ?id
    ?organization_arn ?organizational_unit_arn ~image_id () :
    aws_ami_launch_permission =
  {
    account_id;
    group;
    id;
    image_id;
    organization_arn;
    organizational_unit_arn;
  }

type t = {
  account_id : string prop;
  group : string prop;
  id : string prop;
  image_id : string prop;
  organization_arn : string prop;
  organizational_unit_arn : string prop;
}

let make ?account_id ?group ?id ?organization_arn
    ?organizational_unit_arn ~image_id __id =
  let __type = "aws_ami_launch_permission" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       image_id = Prop.computed __type __id "image_id";
       organization_arn =
         Prop.computed __type __id "organization_arn";
       organizational_unit_arn =
         Prop.computed __type __id "organizational_unit_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ami_launch_permission
        (aws_ami_launch_permission ?account_id ?group ?id
           ?organization_arn ?organizational_unit_arn ~image_id ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?group ?id ?organization_arn
    ?organizational_unit_arn ~image_id __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?group ?id ?organization_arn
      ?organizational_unit_arn ~image_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
