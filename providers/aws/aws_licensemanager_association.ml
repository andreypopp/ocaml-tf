(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_licensemanager_association = {
  id : string prop option; [@option]  (** id *)
  license_configuration_arn : string prop;
      (** license_configuration_arn *)
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_licensemanager_association *)

let aws_licensemanager_association ?id ~license_configuration_arn
    ~resource_arn () : aws_licensemanager_association =
  { id; license_configuration_arn; resource_arn }

type t = {
  id : string prop;
  license_configuration_arn : string prop;
  resource_arn : string prop;
}

let make ?id ~license_configuration_arn ~resource_arn __id =
  let __type = "aws_licensemanager_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       license_configuration_arn =
         Prop.computed __type __id "license_configuration_arn";
       resource_arn = Prop.computed __type __id "resource_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_licensemanager_association
        (aws_licensemanager_association ?id
           ~license_configuration_arn ~resource_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~license_configuration_arn ~resource_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~license_configuration_arn ~resource_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
