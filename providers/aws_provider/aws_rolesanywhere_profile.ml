(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rolesanywhere_profile = {
  duration_seconds : float prop option; [@option]
      (** duration_seconds *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  managed_policy_arns : string prop list option; [@option]
      (** managed_policy_arns *)
  name : string prop;  (** name *)
  require_instance_properties : bool prop option; [@option]
      (** require_instance_properties *)
  role_arns : string prop list;  (** role_arns *)
  session_policy : string prop option; [@option]
      (** session_policy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_rolesanywhere_profile *)

let aws_rolesanywhere_profile ?duration_seconds ?enabled ?id
    ?managed_policy_arns ?require_instance_properties ?session_policy
    ?tags ?tags_all ~name ~role_arns __resource_id =
  let __resource_type = "aws_rolesanywhere_profile" in
  let __resource =
    {
      duration_seconds;
      enabled;
      id;
      managed_policy_arns;
      name;
      require_instance_properties;
      role_arns;
      session_policy;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rolesanywhere_profile __resource);
  ()
