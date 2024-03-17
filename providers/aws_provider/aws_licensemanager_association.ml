(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_licensemanager_association = {
  id : string prop option; [@option]  (** id *)
  license_configuration_arn : string prop;
      (** license_configuration_arn *)
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_licensemanager_association *)

type t = {
  id : string prop;
  license_configuration_arn : string prop;
  resource_arn : string prop;
}

let aws_licensemanager_association ?id ~license_configuration_arn
    ~resource_arn __resource_id =
  let __resource_type = "aws_licensemanager_association" in
  let __resource =
    ({ id; license_configuration_arn; resource_arn }
      : aws_licensemanager_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_licensemanager_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       license_configuration_arn =
         Prop.computed __resource_type __resource_id
           "license_configuration_arn";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
     }
      : t)
  in
  __resource_attributes
