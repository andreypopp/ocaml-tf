(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subscription *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_subscription ?alias ?billing_scope_id ?id
    ?subscription_id ?tags ?workload ?timeouts ~subscription_name ()
    : azurerm_subscription =
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

type t = {
  alias : string prop;
  billing_scope_id : string prop;
  id : string prop;
  subscription_id : string prop;
  subscription_name : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  workload : string prop;
}

let make ?alias ?billing_scope_id ?id ?subscription_id ?tags
    ?workload ?timeouts ~subscription_name __id =
  let __type = "azurerm_subscription" in
  let __attrs =
    ({
       alias = Prop.computed __type __id "alias";
       billing_scope_id =
         Prop.computed __type __id "billing_scope_id";
       id = Prop.computed __type __id "id";
       subscription_id = Prop.computed __type __id "subscription_id";
       subscription_name =
         Prop.computed __type __id "subscription_name";
       tags = Prop.computed __type __id "tags";
       tenant_id = Prop.computed __type __id "tenant_id";
       workload = Prop.computed __type __id "workload";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_subscription
        (azurerm_subscription ?alias ?billing_scope_id ?id
           ?subscription_id ?tags ?workload ?timeouts
           ~subscription_name ());
    attrs = __attrs;
  }

let register ?tf_module ?alias ?billing_scope_id ?id ?subscription_id
    ?tags ?workload ?timeouts ~subscription_name __id =
  let (r : _ Tf_core.resource) =
    make ?alias ?billing_scope_id ?id ?subscription_id ?tags
      ?workload ?timeouts ~subscription_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
