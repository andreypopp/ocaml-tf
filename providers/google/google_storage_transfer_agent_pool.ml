(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type bandwidth_limit = {
  limit_mbps : string prop;
      (** Bandwidth rate in megabytes per second, distributed across all the agents in the pool. *)
}
[@@deriving yojson_of]
(** Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_storage_transfer_agent_pool = {
  display_name : string prop option; [@option]
      (** Specifies the client-specified AgentPool description. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The ID of the agent pool to create.

The agentPoolId must meet the following requirements:
* Length of 128 characters or less.
* Not start with the string goog.
* Start with a lowercase ASCII character, followed by:
  * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (-), periods (.), underscores (_), or tildes (~).
  * One or more numerals or lowercase ASCII characters.

As expressed by the regular expression: ^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$. *)
  project : string prop option; [@option]  (** project *)
  bandwidth_limit : bandwidth_limit list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_storage_transfer_agent_pool *)

let bandwidth_limit ~limit_mbps () : bandwidth_limit = { limit_mbps }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_storage_transfer_agent_pool ?display_name ?id ?project
    ?timeouts ~name ~bandwidth_limit () :
    google_storage_transfer_agent_pool =
  { display_name; id; name; project; bandwidth_limit; timeouts }

type t = {
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
}

let register ?tf_module ?display_name ?id ?project ?timeouts ~name
    ~bandwidth_limit __resource_id =
  let __resource_type = "google_storage_transfer_agent_pool" in
  let __resource =
    google_storage_transfer_agent_pool ?display_name ?id ?project
      ?timeouts ~name ~bandwidth_limit ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_transfer_agent_pool __resource);
  let __resource_attributes =
    ({
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
