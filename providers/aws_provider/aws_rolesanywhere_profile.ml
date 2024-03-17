(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rolesanywhere_profile = {
  duration_seconds : float option; [@option]  (** duration_seconds *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  managed_policy_arns : string list option; [@option]
      (** managed_policy_arns *)
  name : string;  (** name *)
  require_instance_properties : bool option; [@option]
      (** require_instance_properties *)
  role_arns : string list;  (** role_arns *)
  session_policy : string option; [@option]  (** session_policy *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
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
