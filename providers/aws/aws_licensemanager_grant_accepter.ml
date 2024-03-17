(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_licensemanager_grant_accepter = {
  grant_arn : string prop;
      (** Amazon Resource Name (ARN) of the grant. *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_licensemanager_grant_accepter *)

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

let aws_licensemanager_grant_accepter ?id ~grant_arn __resource_id =
  let __resource_type = "aws_licensemanager_grant_accepter" in
  let __resource =
    ({ grant_arn; id } : aws_licensemanager_grant_accepter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_licensemanager_grant_accepter __resource);
  let __resource_attributes =
    ({
       allowed_operations =
         Prop.computed __resource_type __resource_id
           "allowed_operations";
       grant_arn =
         Prop.computed __resource_type __resource_id "grant_arn";
       home_region =
         Prop.computed __resource_type __resource_id "home_region";
       id = Prop.computed __resource_type __resource_id "id";
       license_arn =
         Prop.computed __resource_type __resource_id "license_arn";
       name = Prop.computed __resource_type __resource_id "name";
       parent_arn =
         Prop.computed __resource_type __resource_id "parent_arn";
       principal =
         Prop.computed __resource_type __resource_id "principal";
       status = Prop.computed __resource_type __resource_id "status";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
