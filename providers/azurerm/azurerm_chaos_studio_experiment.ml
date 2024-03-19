(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type selectors = {
  chaos_studio_target_ids : string prop list;
      (** chaos_studio_target_ids *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** selectors *)

type steps__branch__actions = {
  action_type : string prop;  (** action_type *)
  duration : string prop option; [@option]  (** duration *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  selector_name : string prop option; [@option]  (** selector_name *)
  urn : string prop option; [@option]  (** urn *)
}
[@@deriving yojson_of]
(** steps__branch__actions *)

type steps__branch = {
  name : string prop;  (** name *)
  actions : steps__branch__actions list;
}
[@@deriving yojson_of]
(** steps__branch *)

type steps = {
  name : string prop;  (** name *)
  branch : steps__branch list;
}
[@@deriving yojson_of]
(** steps *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_chaos_studio_experiment = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  identity : identity list;
  selectors : selectors list;
  steps : steps list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let selectors ~chaos_studio_target_ids ~name () : selectors =
  { chaos_studio_target_ids; name }

let steps__branch__actions ?duration ?parameters ?selector_name ?urn
    ~action_type () : steps__branch__actions =
  { action_type; duration; parameters; selector_name; urn }

let steps__branch ~name ~actions () : steps__branch =
  { name; actions }

let steps ~name ~branch () : steps = { name; branch }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_chaos_studio_experiment ?id ?timeouts ~location ~name
    ~resource_group_name ~identity ~selectors ~steps () :
    azurerm_chaos_studio_experiment =
  {
    id;
    location;
    name;
    resource_group_name;
    identity;
    selectors;
    steps;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let register ?tf_module ?id ?timeouts ~location ~name
    ~resource_group_name ~identity ~selectors ~steps __resource_id =
  let __resource_type = "azurerm_chaos_studio_experiment" in
  let __resource =
    azurerm_chaos_studio_experiment ?id ?timeouts ~location ~name
      ~resource_group_name ~identity ~selectors ~steps ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_chaos_studio_experiment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
