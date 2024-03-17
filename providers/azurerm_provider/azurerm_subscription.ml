(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_subscription__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_subscription__timeouts *)

type azurerm_subscription = {
  billing_scope_id : string option; [@option]
      (** billing_scope_id *)
  subscription_name : string;
      (** The Display Name for the Subscription. *)
  tags : (string * string) list option; [@option]  (** tags *)
  workload : string option; [@option]
      (** The workload type for the Subscription. Possible values are `Production` (default) and `DevTest`. *)
  timeouts : azurerm_subscription__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subscription *)

let azurerm_subscription ?billing_scope_id ?tags ?workload ?timeouts
    ~subscription_name __resource_id =
  let __resource_type = "azurerm_subscription" in
  let __resource =
    { billing_scope_id; subscription_name; tags; workload; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subscription __resource);
  ()
