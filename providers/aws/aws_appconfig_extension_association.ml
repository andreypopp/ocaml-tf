(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appconfig_extension_association = {
  extension_arn : string prop;  (** extension_arn *)
  id : string prop option; [@option]  (** id *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_appconfig_extension_association *)

type t = {
  arn : string prop;
  extension_arn : string prop;
  extension_version : float prop;
  id : string prop;
  parameters : (string * string) list prop;
  resource_arn : string prop;
}

let aws_appconfig_extension_association ?id ?parameters
    ~extension_arn ~resource_arn __resource_id =
  let __resource_type = "aws_appconfig_extension_association" in
  let __resource =
    ({ extension_arn; id; parameters; resource_arn }
      : aws_appconfig_extension_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_extension_association __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       extension_arn =
         Prop.computed __resource_type __resource_id "extension_arn";
       extension_version =
         Prop.computed __resource_type __resource_id
           "extension_version";
       id = Prop.computed __resource_type __resource_id "id";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
     }
      : t)
  in
  __resource_attributes
