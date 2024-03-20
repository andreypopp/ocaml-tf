(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  cluster_id : string prop;
  cluster_state : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudhsm_v2_cluster) -> ()

let yojson_of_aws_cloudhsm_v2_cluster =
  (function
   | {
       cluster_id = v_cluster_id;
       cluster_state = v_cluster_state;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_cluster_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_state", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudhsm_v2_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudhsm_v2_cluster

[@@@deriving.end]

let aws_cloudhsm_v2_cluster ?cluster_state ?id ~cluster_id () :
    aws_cloudhsm_v2_cluster =
  { cluster_id; cluster_state; id }

type t = {
  cluster_certificates : cluster_certificates list prop;
  cluster_id : string prop;
  cluster_state : string prop;
  id : string prop;
  security_group_id : string prop;
  subnet_ids : string list prop;
  vpc_id : string prop;
}

let make ?cluster_state ?id ~cluster_id __id =
  let __type = "aws_cloudhsm_v2_cluster" in
  let __attrs =
    ({
       cluster_certificates =
         Prop.computed __type __id "cluster_certificates";
       cluster_id = Prop.computed __type __id "cluster_id";
       cluster_state = Prop.computed __type __id "cluster_state";
       id = Prop.computed __type __id "id";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudhsm_v2_cluster
        (aws_cloudhsm_v2_cluster ?cluster_state ?id ~cluster_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cluster_state ?id ~cluster_id __id =
  let (r : _ Tf_core.resource) =
    make ?cluster_state ?id ~cluster_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
