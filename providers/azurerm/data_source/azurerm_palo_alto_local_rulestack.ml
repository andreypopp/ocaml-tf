(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_palo_alto_local_rulestack = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_palo_alto_local_rulestack) -> ()

let yojson_of_azurerm_palo_alto_local_rulestack =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_palo_alto_local_rulestack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_palo_alto_local_rulestack

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_palo_alto_local_rulestack ?id ?timeouts ~name
    ~resource_group_name () : azurerm_palo_alto_local_rulestack =
  { id; name; resource_group_name; timeouts }

type t = {
  anti_spyware_profile : string prop;
  anti_virus_profile : string prop;
  description : string prop;
  dns_subscription : string prop;
  file_blocking_profile : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_trust_certificate : string prop;
  outbound_untrust_certificate : string prop;
  resource_group_name : string prop;
  url_filtering_profile : string prop;
  vulnerability_profile : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_palo_alto_local_rulestack" in
  let __attrs =
    ({
       anti_spyware_profile =
         Prop.computed __type __id "anti_spyware_profile";
       anti_virus_profile =
         Prop.computed __type __id "anti_virus_profile";
       description = Prop.computed __type __id "description";
       dns_subscription =
         Prop.computed __type __id "dns_subscription";
       file_blocking_profile =
         Prop.computed __type __id "file_blocking_profile";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_trust_certificate =
         Prop.computed __type __id "outbound_trust_certificate";
       outbound_untrust_certificate =
         Prop.computed __type __id "outbound_untrust_certificate";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       url_filtering_profile =
         Prop.computed __type __id "url_filtering_profile";
       vulnerability_profile =
         Prop.computed __type __id "vulnerability_profile";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_palo_alto_local_rulestack
        (azurerm_palo_alto_local_rulestack ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
