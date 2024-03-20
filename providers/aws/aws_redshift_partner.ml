(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_partner = {
  account_id : string prop;
  cluster_identifier : string prop;
  database_name : string prop;
  id : string prop option; [@option]
  partner_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_partner) -> ()

let yojson_of_aws_redshift_partner =
  (function
   | {
       account_id = v_account_id;
       cluster_identifier = v_cluster_identifier;
       database_name = v_database_name;
       id = v_id;
       partner_name = v_partner_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_partner_name in
         ("partner_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshift_partner -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_partner

[@@@deriving.end]

let aws_redshift_partner ?id ~account_id ~cluster_identifier
    ~database_name ~partner_name () : aws_redshift_partner =
  { account_id; cluster_identifier; database_name; id; partner_name }

type t = {
  account_id : string prop;
  cluster_identifier : string prop;
  database_name : string prop;
  id : string prop;
  partner_name : string prop;
  status : string prop;
  status_message : string prop;
}

let make ?id ~account_id ~cluster_identifier ~database_name
    ~partner_name __id =
  let __type = "aws_redshift_partner" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       partner_name = Prop.computed __type __id "partner_name";
       status = Prop.computed __type __id "status";
       status_message = Prop.computed __type __id "status_message";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_partner
        (aws_redshift_partner ?id ~account_id ~cluster_identifier
           ~database_name ~partner_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~cluster_identifier
    ~database_name ~partner_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~cluster_identifier ~database_name
      ~partner_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
