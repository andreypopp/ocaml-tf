(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_licensemanager_grant_accepter = {
  grant_arn : string prop;
      (** Amazon Resource Name (ARN) of the grant. *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_licensemanager_grant_accepter *)

let aws_licensemanager_grant_accepter ?id ~grant_arn () :
    aws_licensemanager_grant_accepter =
  { grant_arn; id }

type t = {
  allowed_operations : string list prop;
  grant_arn : string prop;
  home_region : string prop;
  id : string prop;
  license_arn : string prop;
  name : string prop;
  parent_arn : string prop;
  principal : string prop;
  status : string prop;
  version : string prop;
}

let make ?id ~grant_arn __id =
  let __type = "aws_licensemanager_grant_accepter" in
  let __attrs =
    ({
       allowed_operations =
         Prop.computed __type __id "allowed_operations";
       grant_arn = Prop.computed __type __id "grant_arn";
       home_region = Prop.computed __type __id "home_region";
       id = Prop.computed __type __id "id";
       license_arn = Prop.computed __type __id "license_arn";
       name = Prop.computed __type __id "name";
       parent_arn = Prop.computed __type __id "parent_arn";
       principal = Prop.computed __type __id "principal";
       status = Prop.computed __type __id "status";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_licensemanager_grant_accepter
        (aws_licensemanager_grant_accepter ?id ~grant_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~grant_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~grant_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
