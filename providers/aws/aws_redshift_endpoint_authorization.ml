(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_endpoint_authorization = {
  account : string prop;  (** account *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  force_delete : bool prop option; [@option]  (** force_delete *)
  id : string prop option; [@option]  (** id *)
  vpc_ids : string prop list option; [@option]  (** vpc_ids *)
}
[@@deriving yojson_of]
(** aws_redshift_endpoint_authorization *)

let aws_redshift_endpoint_authorization ?force_delete ?id ?vpc_ids
    ~account ~cluster_identifier () :
    aws_redshift_endpoint_authorization =
  { account; cluster_identifier; force_delete; id; vpc_ids }

type t = {
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
