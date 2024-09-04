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

type azurerm_key_vault_managed_hardware_security_module_key = {
  curve : string prop option; [@option]
  expiration_date : string prop option; [@option]
  id : string prop option; [@option]
  key_opts : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  key_size : float prop option; [@option]
  key_type : string prop;
  managed_hsm_id : string prop;
  name : string prop;
  not_before_date : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_key_vault_managed_hardware_security_module_key) ->
  ()

let yojson_of_azurerm_key_vault_managed_hardware_security_module_key
    =
  (function
   | {
       curve = v_curve;
       expiration_date = v_expiration_date;
       id = v_id;
       key_opts = v_key_opts;
       key_size = v_key_size;
       key_type = v_key_type;
       managed_hsm_id = v_managed_hsm_id;
       name = v_name;
       not_before_date = v_not_before_date;
       tags = v_tags;
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_not_before_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "not_before_date", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_hsm_id
         in
         ("managed_hsm_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_type in
         ("key_type", arg) :: bnds
       in
       let bnds =
         match v_key_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "key_size", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_key_opts then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_key_opts
           in
           let bnd = "key_opts", arg in
           bnd :: bnds
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
         match v_expiration_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_curve with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "curve", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_key_vault_managed_hardware_security_module_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_key_vault_managed_hardware_security_module_key

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_managed_hardware_security_module_key ?curve
    ?expiration_date ?id ?key_size ?not_before_date ?tags ?timeouts
    ~key_opts ~key_type ~managed_hsm_id ~name () :
    azurerm_key_vault_managed_hardware_security_module_key =
  {
    curve;
    expiration_date;
    id;
    key_opts;
    key_size;
    key_type;
    managed_hsm_id;
    name;
    not_before_date;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  curve : string prop;
  expiration_date : string prop;
  id : string prop;
  key_opts : string list prop;
  key_size : float prop;
  key_type : string prop;
  managed_hsm_id : string prop;
  name : string prop;
  not_before_date : string prop;
  tags : string Tf_core.assoc prop;
  versioned_id : string prop;
}

let make ?curve ?expiration_date ?id ?key_size ?not_before_date ?tags
    ?timeouts ~key_opts ~key_type ~managed_hsm_id ~name __id =
  let __type =
    "azurerm_key_vault_managed_hardware_security_module_key"
  in
  let __attrs =
    ({
       tf_name = __id;
       curve = Prop.computed __type __id "curve";
       expiration_date = Prop.computed __type __id "expiration_date";
       id = Prop.computed __type __id "id";
       key_opts = Prop.computed __type __id "key_opts";
       key_size = Prop.computed __type __id "key_size";
       key_type = Prop.computed __type __id "key_type";
       managed_hsm_id = Prop.computed __type __id "managed_hsm_id";
       name = Prop.computed __type __id "name";
       not_before_date = Prop.computed __type __id "not_before_date";
       tags = Prop.computed __type __id "tags";
       versioned_id = Prop.computed __type __id "versioned_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_managed_hardware_security_module_key
        (azurerm_key_vault_managed_hardware_security_module_key
           ?curve ?expiration_date ?id ?key_size ?not_before_date
           ?tags ?timeouts ~key_opts ~key_type ~managed_hsm_id ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?curve ?expiration_date ?id ?key_size
    ?not_before_date ?tags ?timeouts ~key_opts ~key_type
    ~managed_hsm_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?curve ?expiration_date ?id ?key_size ?not_before_date ?tags
      ?timeouts ~key_opts ~key_type ~managed_hsm_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
