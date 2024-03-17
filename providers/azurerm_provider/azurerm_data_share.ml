(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_share__snapshot_schedule = {
  name : string;  (** name *)
  recurrence : string;  (** recurrence *)
  start_time : string;  (** start_time *)
}
[@@deriving yojson_of]
(** azurerm_data_share__snapshot_schedule *)

type azurerm_data_share__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_share__timeouts *)

type azurerm_data_share = {
  account_id : string;  (** account_id *)
  description : string option; [@option]  (** description *)
  kind : string;  (** kind *)
  name : string;  (** name *)
  terms : string option; [@option]  (** terms *)
  snapshot_schedule : azurerm_data_share__snapshot_schedule list;
  timeouts : azurerm_data_share__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share *)

let azurerm_data_share ?description ?terms ?timeouts ~account_id
    ~kind ~name ~snapshot_schedule __resource_id =
  let __resource_type = "azurerm_data_share" in
  let __resource =
    {
      account_id;
      description;
      kind;
      name;
      terms;
      snapshot_schedule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share __resource);
  ()
