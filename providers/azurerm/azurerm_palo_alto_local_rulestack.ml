(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_palo_alto_local_rulestack = {
  anti_spyware_profile : string prop option; [@option]
  anti_virus_profile : string prop option; [@option]
  description : string prop option; [@option]
  dns_subscription : string prop option; [@option]
  file_blocking_profile : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  url_filtering_profile : string prop option; [@option]
  vulnerability_profile : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_palo_alto_local_rulestack) -> ()

let yojson_of_azurerm_palo_alto_local_rulestack =
  (function
   | {
       anti_spyware_profile = v_anti_spyware_profile;
       anti_virus_profile = v_anti_virus_profile;
       description = v_description;
       dns_subscription = v_dns_subscription;
       file_blocking_profile = v_file_blocking_profile;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       url_filtering_profile = v_url_filtering_profile;
       vulnerability_profile = v_vulnerability_profile;
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
         match v_vulnerability_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vulnerability_profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_url_filtering_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url_filtering_profile", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_blocking_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_blocking_profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_subscription with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_subscription", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_anti_virus_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "anti_virus_profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_anti_spyware_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "anti_spyware_profile", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_palo_alto_local_rulestack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_palo_alto_local_rulestack

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_palo_alto_local_rulestack ?anti_spyware_profile
    ?anti_virus_profile ?description ?dns_subscription
    ?file_blocking_profile ?id ?url_filtering_profile
    ?vulnerability_profile ?timeouts ~location ~name
    ~resource_group_name () : azurerm_palo_alto_local_rulestack =
  {
    anti_spyware_profile;
    anti_virus_profile;
    description;
    dns_subscription;
    file_blocking_profile;
    id;
    location;
    name;
    resource_group_name;
    url_filtering_profile;
    vulnerability_profile;
    timeouts;
  }

type t = {
  tf_name : string;
  anti_spyware_profile : string prop;
  anti_virus_profile : string prop;
  description : string prop;
  dns_subscription : string prop;
  file_blocking_profile : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  url_filtering_profile : string prop;
  vulnerability_profile : string prop;
}

let make ?anti_spyware_profile ?anti_virus_profile ?description
    ?dns_subscription ?file_blocking_profile ?id
    ?url_filtering_profile ?vulnerability_profile ?timeouts ~location
    ~name ~resource_group_name __id =
  let __type = "azurerm_palo_alto_local_rulestack" in
  let __attrs =
    ({
       tf_name = __id;
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
        (azurerm_palo_alto_local_rulestack ?anti_spyware_profile
           ?anti_virus_profile ?description ?dns_subscription
           ?file_blocking_profile ?id ?url_filtering_profile
           ?vulnerability_profile ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?anti_spyware_profile ?anti_virus_profile
    ?description ?dns_subscription ?file_blocking_profile ?id
    ?url_filtering_profile ?vulnerability_profile ?timeouts ~location
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?anti_spyware_profile ?anti_virus_profile ?description
      ?dns_subscription ?file_blocking_profile ?id
      ?url_filtering_profile ?vulnerability_profile ?timeouts
      ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
