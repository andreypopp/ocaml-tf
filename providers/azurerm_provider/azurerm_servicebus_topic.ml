(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_servicebus_topic__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_topic__timeouts *)

type azurerm_servicebus_topic = {
  enable_batched_operations : bool option; [@option]
      (** enable_batched_operations *)
  enable_express : bool option; [@option]  (** enable_express *)
  enable_partitioning : bool option; [@option]
      (** enable_partitioning *)
  name : string;  (** name *)
  namespace_id : string;  (** namespace_id *)
  requires_duplicate_detection : bool option; [@option]
      (** requires_duplicate_detection *)
  status : string option; [@option]  (** status *)
  support_ordering : bool option; [@option]  (** support_ordering *)
  timeouts : azurerm_servicebus_topic__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_topic *)

let azurerm_servicebus_topic ?enable_batched_operations
    ?enable_express ?enable_partitioning
    ?requires_duplicate_detection ?status ?support_ordering ?timeouts
    ~name ~namespace_id __resource_id =
  let __resource_type = "azurerm_servicebus_topic" in
  let __resource =
    {
      enable_batched_operations;
      enable_express;
      enable_partitioning;
      name;
      namespace_id;
      requires_duplicate_detection;
      status;
      support_ordering;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_topic __resource);
  ()
