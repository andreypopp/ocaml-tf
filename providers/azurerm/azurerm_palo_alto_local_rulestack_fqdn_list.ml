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

type azurerm_palo_alto_local_rulestack_fqdn_list = {
  audit_comment : string prop option; [@option]
  description : string prop option; [@option]
  fully_qualified_domain_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  id : string prop option; [@option]
  name : string prop;
  rulestack_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_palo_alto_local_rulestack_fqdn_list) -> ()

let yojson_of_azurerm_palo_alto_local_rulestack_fqdn_list =
  (function
   | {
       audit_comment = v_audit_comment;
       description = v_description;
       fully_qualified_domain_names = v_fully_qualified_domain_names;
       id = v_id;
       name = v_name;
       rulestack_id = v_rulestack_id;
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
         let arg = yojson_of_prop yojson_of_string v_rulestack_id in
         ("rulestack_id", arg) :: bnds
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
       let bnds =
         if [] = v_fully_qualified_domain_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_fully_qualified_domain_names
           in
           let bnd = "fully_qualified_domain_names", arg in
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
         match v_audit_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audit_comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_palo_alto_local_rulestack_fqdn_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_palo_alto_local_rulestack_fqdn_list

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_palo_alto_local_rulestack_fqdn_list ?audit_comment
    ?description ?id ?timeouts ~fully_qualified_domain_names ~name
    ~rulestack_id () : azurerm_palo_alto_local_rulestack_fqdn_list =
  {
    audit_comment;
    description;
    fully_qualified_domain_names;
    id;
    name;
    rulestack_id;
    timeouts;
  }

type t = {
  tf_name : string;
  audit_comment : string prop;
  description : string prop;
  fully_qualified_domain_names : string list prop;
  id : string prop;
  name : string prop;
  rulestack_id : string prop;
}

let make ?audit_comment ?description ?id ?timeouts
    ~fully_qualified_domain_names ~name ~rulestack_id __id =
  let __type = "azurerm_palo_alto_local_rulestack_fqdn_list" in
  let __attrs =
    ({
       tf_name = __id;
       audit_comment = Prop.computed __type __id "audit_comment";
       description = Prop.computed __type __id "description";
       fully_qualified_domain_names =
         Prop.computed __type __id "fully_qualified_domain_names";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rulestack_id = Prop.computed __type __id "rulestack_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_palo_alto_local_rulestack_fqdn_list
        (azurerm_palo_alto_local_rulestack_fqdn_list ?audit_comment
           ?description ?id ?timeouts ~fully_qualified_domain_names
           ~name ~rulestack_id ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_comment ?description ?id ?timeouts
    ~fully_qualified_domain_names ~name ~rulestack_id __id =
  let (r : _ Tf_core.resource) =
    make ?audit_comment ?description ?id ?timeouts
      ~fully_qualified_domain_names ~name ~rulestack_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
