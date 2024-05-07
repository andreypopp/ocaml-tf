(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_servicecatalog_principal_portfolio_association = {
  accept_language : string prop option; [@option]
  id : string prop option; [@option]
  portfolio_id : string prop;
  principal_arn : string prop;
  principal_type : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_servicecatalog_principal_portfolio_association) -> ()

let yojson_of_aws_servicecatalog_principal_portfolio_association =
  (function
   | {
       accept_language = v_accept_language;
       id = v_id;
       portfolio_id = v_portfolio_id;
       principal_arn = v_principal_arn;
       principal_type = v_principal_type;
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
         match v_principal_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "principal_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_arn in
         ("principal_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_portfolio_id in
         ("portfolio_id", arg) :: bnds
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
         match v_accept_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accept_language", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_servicecatalog_principal_portfolio_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalog_principal_portfolio_association

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let aws_servicecatalog_principal_portfolio_association
    ?accept_language ?id ?principal_type ?timeouts ~portfolio_id
    ~principal_arn () :
    aws_servicecatalog_principal_portfolio_association =
  {
    accept_language;
    id;
    portfolio_id;
    principal_arn;
    principal_type;
    timeouts;
  }

type t = {
  tf_name : string;
  accept_language : string prop;
  id : string prop;
  portfolio_id : string prop;
  principal_arn : string prop;
  principal_type : string prop;
}

let make ?accept_language ?id ?principal_type ?timeouts ~portfolio_id
    ~principal_arn __id =
  let __type =
    "aws_servicecatalog_principal_portfolio_association"
  in
  let __attrs =
    ({
       tf_name = __id;
       accept_language = Prop.computed __type __id "accept_language";
       id = Prop.computed __type __id "id";
       portfolio_id = Prop.computed __type __id "portfolio_id";
       principal_arn = Prop.computed __type __id "principal_arn";
       principal_type = Prop.computed __type __id "principal_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_principal_portfolio_association
        (aws_servicecatalog_principal_portfolio_association
           ?accept_language ?id ?principal_type ?timeouts
           ~portfolio_id ~principal_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?id ?principal_type
    ?timeouts ~portfolio_id ~principal_arn __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?id ?principal_type ?timeouts ~portfolio_id
      ~principal_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
