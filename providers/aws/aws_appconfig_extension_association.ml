(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appconfig_extension_association = {
  extension_arn : string prop;  (** extension_arn *)
  id : string prop option; [@option]  (** id *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_appconfig_extension_association *)

let aws_appconfig_extension_association ?id ?parameters
    ~extension_arn ~resource_arn () :
    aws_appconfig_extension_association =
  { extension_arn; id; parameters; resource_arn }

type t = {
  arn : string prop;
  extension_arn : string prop;
  extension_version : float prop;
  id : string prop;
  parameters : (string * string) list prop;
  resource_arn : string prop;
}

let make ?id ?parameters ~extension_arn ~resource_arn __id =
  let __type = "aws_appconfig_extension_association" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       extension_arn = Prop.computed __type __id "extension_arn";
       extension_version =
         Prop.computed __type __id "extension_version";
       id = Prop.computed __type __id "id";
       parameters = Prop.computed __type __id "parameters";
       resource_arn = Prop.computed __type __id "resource_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_extension_association
        (aws_appconfig_extension_association ?id ?parameters
           ~extension_arn ~resource_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parameters ~extension_arn ~resource_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parameters ~extension_arn ~resource_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
