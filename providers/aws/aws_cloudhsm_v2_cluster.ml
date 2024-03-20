(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type cluster_certificates = {
  aws_hardware_certificate : string prop;
  cluster_certificate : string prop;
  cluster_csr : string prop;
  hsm_certificate : string prop;
  manufacturer_hardware_certificate : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_certificates) -> ()

let yojson_of_cluster_certificates =
  (function
   | {
       aws_hardware_certificate = v_aws_hardware_certificate;
       cluster_certificate = v_cluster_certificate;
       cluster_csr = v_cluster_csr;
       hsm_certificate = v_hsm_certificate;
       manufacturer_hardware_certificate =
         v_manufacturer_hardware_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_manufacturer_hardware_certificate
         in
         ("manufacturer_hardware_certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hsm_certificate
         in
         ("hsm_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_csr in
         ("cluster_csr", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_certificate
         in
         ("cluster_certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_aws_hardware_certificate
         in
         ("aws_hardware_certificate", arg) :: bnds
       in
       `Assoc bnds
    : cluster_certificates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_certificates

[@@@deriving.end]

type aws_cloudhsm_v2_cluster = {
  hsm_type : string prop;
  id : string prop option; [@option]
  source_backup_identifier : string prop option; [@option]
  subnet_ids : string prop list;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudhsm_v2_cluster) -> ()

let yojson_of_aws_cloudhsm_v2_cluster =
  (function
   | {
       hsm_type = v_hsm_type;
       id = v_id;
       source_backup_identifier = v_source_backup_identifier;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
       in
       let bnds =
         match v_source_backup_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_backup_identifier", arg in
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
         let arg = yojson_of_prop yojson_of_string v_hsm_type in
         ("hsm_type", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudhsm_v2_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudhsm_v2_cluster

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cloudhsm_v2_cluster ?id ?source_backup_identifier ?tags
    ?tags_all ?timeouts ~hsm_type ~subnet_ids () :
    aws_cloudhsm_v2_cluster =
  {
    hsm_type;
    id;
    source_backup_identifier;
    subnet_ids;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  cluster_certificates : cluster_certificates list prop;
  cluster_id : string prop;
  cluster_state : string prop;
  hsm_type : string prop;
  id : string prop;
  security_group_id : string prop;
  source_backup_identifier : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?source_backup_identifier ?tags ?tags_all ?timeouts
    ~hsm_type ~subnet_ids __id =
  let __type = "aws_cloudhsm_v2_cluster" in
  let __attrs =
    ({
       cluster_certificates =
         Prop.computed __type __id "cluster_certificates";
       cluster_id = Prop.computed __type __id "cluster_id";
       cluster_state = Prop.computed __type __id "cluster_state";
       hsm_type = Prop.computed __type __id "hsm_type";
       id = Prop.computed __type __id "id";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       source_backup_identifier =
         Prop.computed __type __id "source_backup_identifier";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudhsm_v2_cluster
        (aws_cloudhsm_v2_cluster ?id ?source_backup_identifier ?tags
           ?tags_all ?timeouts ~hsm_type ~subnet_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?source_backup_identifier ?tags ?tags_all
    ?timeouts ~hsm_type ~subnet_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?source_backup_identifier ?tags ?tags_all ?timeouts
      ~hsm_type ~subnet_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
