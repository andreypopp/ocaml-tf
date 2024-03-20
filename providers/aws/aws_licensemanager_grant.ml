(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_licensemanager_grant = {
  allowed_operations : string prop list;
      (** Allowed operations for the grant. This is a subset of the allowed operations on the license. *)
  id : string prop option; [@option]  (** id *)
  license_arn : string prop;  (** License ARN. *)
  name : string prop;  (** Name of the grant. *)
  principal : string prop;
      (** The grantee principal ARN. The target account for the grant in the form of the ARN for an account principal of the root user. *)
}
[@@deriving yojson_of]
(** aws_licensemanager_grant *)

let aws_licensemanager_grant ?id ~allowed_operations ~license_arn
    ~name ~principal () : aws_licensemanager_grant =
  { allowed_operations; id; license_arn; name; principal }

type t = {
  allowed_operations : string list prop;
  arn : string prop;
  home_region : string prop;
  id : string prop;
  license_arn : string prop;
  name : string prop;
  parent_arn : string prop;
  principal : string prop;
  status : string prop;
  version : string prop;
}

let make ?id ~allowed_operations ~license_arn ~name ~principal __id =
  let __type = "aws_licensemanager_grant" in
  let __attrs =
    ({
       allowed_operations =
         Prop.computed __type __id "allowed_operations";
       arn = Prop.computed __type __id "arn";
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
      yojson_of_aws_licensemanager_grant
        (aws_licensemanager_grant ?id ~allowed_operations
           ~license_arn ~name ~principal ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~allowed_operations ~license_arn ~name
    ~principal __id =
  let (r : _ Tf_core.resource) =
    make ?id ~allowed_operations ~license_arn ~name ~principal __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
