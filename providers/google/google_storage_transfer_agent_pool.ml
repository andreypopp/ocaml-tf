(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?display_name ?id ?project ?timeouts ~name ~bandwidth_limit
    __id =
  let __type = "google_storage_transfer_agent_pool" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_transfer_agent_pool
        (google_storage_transfer_agent_pool ?display_name ?id
           ?project ?timeouts ~name ~bandwidth_limit ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?project ?timeouts ~name
    ~bandwidth_limit __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?project ?timeouts ~name ~bandwidth_limit
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
