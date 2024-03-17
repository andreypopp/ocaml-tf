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
    ?use_service_linked_role ?with_federation ~arn __resource_id =
  let __resource_type = "aws_lakeformation_resource" in
  let __resource =
    {
      arn;
      hybrid_access_enabled;
      id;
      role_arn;
      use_service_linked_role;
      with_federation;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lakeformation_resource __resource);
  ()
