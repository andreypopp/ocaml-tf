(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type ssl = {
  cert : string prop option; [@option]
  cname : string prop option; [@option]
  key : string prop option; [@option]
  leaf_domain_label : string prop option; [@option]
  overwrite_existing_domain : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl) -> ()

let yojson_of_ssl =
  (function
   | {
       cert = v_cert;
       cname = v_cname;
       key = v_key;
       leaf_domain_label = v_leaf_domain_label;
       overwrite_existing_domain = v_overwrite_existing_domain;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_overwrite_existing_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "overwrite_existing_domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_leaf_domain_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "leaf_domain_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cert with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cert", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ssl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_machine_learning_inference_cluster = {
  cluster_purpose : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  kubernetes_cluster_id : string prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  identity : identity list;
  ssl : ssl list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_machine_learning_inference_cluster) -> ()

let yojson_of_azurerm_machine_learning_inference_cluster =
  (function
   | {
       cluster_purpose = v_cluster_purpose;
       description = v_description;
       id = v_id;
       kubernetes_cluster_id = v_kubernetes_cluster_id;
       location = v_location;
       machine_learning_workspace_id =
         v_machine_learning_workspace_id;
       name = v_name;
       tags = v_tags;
       identity = v_identity;
       ssl = v_ssl;
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
         let arg = yojson_of_list yojson_of_ssl v_ssl in
         ("ssl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_machine_learning_workspace_id
         in
         ("machine_learning_workspace_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kubernetes_cluster_id
         in
         ("kubernetes_cluster_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_purpose with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_purpose", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_machine_learning_inference_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_machine_learning_inference_cluster

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let ssl ?cert ?cname ?key ?leaf_domain_label
    ?overwrite_existing_domain () : ssl =
  { cert; cname; key; leaf_domain_label; overwrite_existing_domain }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_machine_learning_inference_cluster ?cluster_purpose
    ?description ?id ?tags ?timeouts ~kubernetes_cluster_id ~location
    ~machine_learning_workspace_id ~name ~identity ~ssl () :
    azurerm_machine_learning_inference_cluster =
  {
    cluster_purpose;
    description;
    id;
    kubernetes_cluster_id;
    location;
    machine_learning_workspace_id;
    name;
    tags;
    identity;
    ssl;
    timeouts;
  }

type t = {
  cluster_purpose : string prop;
  description : string prop;
  id : string prop;
  kubernetes_cluster_id : string prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ?cluster_purpose ?description ?id ?tags ?timeouts
    ~kubernetes_cluster_id ~location ~machine_learning_workspace_id
    ~name ~identity ~ssl __id =
  let __type = "azurerm_machine_learning_inference_cluster" in
  let __attrs =
    ({
       cluster_purpose = Prop.computed __type __id "cluster_purpose";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kubernetes_cluster_id =
         Prop.computed __type __id "kubernetes_cluster_id";
       location = Prop.computed __type __id "location";
       machine_learning_workspace_id =
         Prop.computed __type __id "machine_learning_workspace_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_machine_learning_inference_cluster
        (azurerm_machine_learning_inference_cluster ?cluster_purpose
           ?description ?id ?tags ?timeouts ~kubernetes_cluster_id
           ~location ~machine_learning_workspace_id ~name ~identity
           ~ssl ());
    attrs = __attrs;
  }

let register ?tf_module ?cluster_purpose ?description ?id ?tags
    ?timeouts ~kubernetes_cluster_id ~location
    ~machine_learning_workspace_id ~name ~identity ~ssl __id =
  let (r : _ Tf_core.resource) =
    make ?cluster_purpose ?description ?id ?tags ?timeouts
      ~kubernetes_cluster_id ~location ~machine_learning_workspace_id
      ~name ~identity ~ssl __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
