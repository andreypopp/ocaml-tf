(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_endpoint_authorization = {
  account : string prop;
  cluster_identifier : string prop;
  force_delete : bool prop option; [@option]
  id : string prop option; [@option]
  vpc_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_endpoint_authorization) -> ()

let yojson_of_aws_redshift_endpoint_authorization =
  (function
   | {
       account = v_account;
       cluster_identifier = v_cluster_identifier;
       force_delete = v_force_delete;
       id = v_id;
       vpc_ids = v_vpc_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_ids", arg in
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
         match v_force_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_delete", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account in
         ("account", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshift_endpoint_authorization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_endpoint_authorization

[@@@deriving.end]

let aws_redshift_endpoint_authorization ?force_delete ?id ?vpc_ids
    ~account ~cluster_identifier () :
    aws_redshift_endpoint_authorization =
  { account; cluster_identifier; force_delete; id; vpc_ids }

type t = {
  tf_name : string;
  account : string prop;
  allowed_all_vpcs : bool prop;
  cluster_identifier : string prop;
  endpoint_count : float prop;
  force_delete : bool prop;
  grantee : string prop;
  grantor : string prop;
  id : string prop;
  vpc_ids : string list prop;
}

let make ?force_delete ?id ?vpc_ids ~account ~cluster_identifier __id
    =
  let __type = "aws_redshift_endpoint_authorization" in
  let __attrs =
    ({
       tf_name = __id;
       account = Prop.computed __type __id "account";
       allowed_all_vpcs =
         Prop.computed __type __id "allowed_all_vpcs";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       endpoint_count = Prop.computed __type __id "endpoint_count";
       force_delete = Prop.computed __type __id "force_delete";
       grantee = Prop.computed __type __id "grantee";
       grantor = Prop.computed __type __id "grantor";
       id = Prop.computed __type __id "id";
       vpc_ids = Prop.computed __type __id "vpc_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_endpoint_authorization
        (aws_redshift_endpoint_authorization ?force_delete ?id
           ?vpc_ids ~account ~cluster_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?force_delete ?id ?vpc_ids ~account
    ~cluster_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?force_delete ?id ?vpc_ids ~account ~cluster_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
