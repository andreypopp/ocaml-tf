(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lakeformation_resource = {
  arn : string prop;  (** arn *)
  hybrid_access_enabled : bool prop option; [@option]
      (** hybrid_access_enabled *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop option; [@option]  (** role_arn *)
  use_service_linked_role : bool prop option; [@option]
      (** use_service_linked_role *)
  with_federation : bool prop option; [@option]
      (** with_federation *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource *)

let aws_lakeformation_resource ?hybrid_access_enabled ?id ?role_arn
    ?use_service_linked_role ?with_federation ~arn () :
    aws_lakeformation_resource =
  {
    arn;
    hybrid_access_enabled;
    id;
    role_arn;
    use_service_linked_role;
    with_federation;
  }

type t = {
  arn : string prop;
  hybrid_access_enabled : bool prop;
  id : string prop;
  last_modified : string prop;
  role_arn : string prop;
  use_service_linked_role : bool prop;
  with_federation : bool prop;
}

let register ?tf_module ?hybrid_access_enabled ?id ?role_arn
    ?use_service_linked_role ?with_federation ~arn __resource_id =
  let __resource_type = "aws_lakeformation_resource" in
  let __resource =
    aws_lakeformation_resource ?hybrid_access_enabled ?id ?role_arn
      ?use_service_linked_role ?with_federation ~arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lakeformation_resource __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       hybrid_access_enabled =
         Prop.computed __resource_type __resource_id
           "hybrid_access_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       last_modified =
         Prop.computed __resource_type __resource_id "last_modified";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       use_service_linked_role =
         Prop.computed __resource_type __resource_id
           "use_service_linked_role";
       with_federation =
         Prop.computed __resource_type __resource_id
           "with_federation";
     }
      : t)
  in
  __resource_attributes
