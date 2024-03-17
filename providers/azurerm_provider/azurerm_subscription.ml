(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_subscription__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_subscription__timeouts *)

type azurerm_subscription = {
  alias : string prop option; [@option]
      (** The Alias Name of the subscription. If omitted a new UUID will be generated for this property. *)
  billing_scope_id : string prop option; [@option]
      (** billing_scope_id *)
  id : string prop option; [@option]  (** id *)
  subscription_id : string prop option; [@option]
      (** The GUID of the Subscription. *)
  subscription_name : string prop;
      (** The Display Name for the Subscription. *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workload : string prop option; [@option]
      (** The workload type for the Subscription. Possible values are `Production` (default) and `DevTest`. *)
  timeouts : azurerm_subscription__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subscription *)

let azurerm_subscription ?alias ?billing_scope_id ?id
    ?subscription_id ?tags ?workload ?timeouts ~subscription_name
    __resource_id =
  let __resource_type = "azurerm_subscription" in
  let __resource =
    {
      alias;
      billing_scope_id;
      id;
      subscription_id;
      subscription_name;
      tags;
      workload;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subscription __resource);
  ()
