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

type aws_servicecatalog_portfolio_share = {
  accept_language : string prop option; [@option]
  id : string prop option; [@option]
  portfolio_id : string prop;
  principal_id : string prop;
  share_principals : bool prop option; [@option]
  share_tag_options : bool prop option; [@option]
  type_ : string prop; [@key "type"]
  wait_for_acceptance : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicecatalog_portfolio_share) -> ()

let yojson_of_aws_servicecatalog_portfolio_share =
  (function
   | {
       accept_language = v_accept_language;
       id = v_id;
       portfolio_id = v_portfolio_id;
       principal_id = v_principal_id;
       share_principals = v_share_principals;
       share_tag_options = v_share_tag_options;
       type_ = v_type_;
       wait_for_acceptance = v_wait_for_acceptance;
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
         match v_wait_for_acceptance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_acceptance", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_share_tag_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "share_tag_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_share_principals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "share_principals", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
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
    : aws_servicecatalog_portfolio_share ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalog_portfolio_share

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_servicecatalog_portfolio_share ?accept_language ?id
    ?share_principals ?share_tag_options ?wait_for_acceptance
    ?timeouts ~portfolio_id ~principal_id ~type_ () :
    aws_servicecatalog_portfolio_share =
  {
    accept_language;
    id;
    portfolio_id;
    principal_id;
    share_principals;
    share_tag_options;
    type_;
    wait_for_acceptance;
    timeouts;
  }

type t = {
  tf_name : string;
  accept_language : string prop;
  accepted : bool prop;
  id : string prop;
  portfolio_id : string prop;
  principal_id : string prop;
  share_principals : bool prop;
  share_tag_options : bool prop;
  type_ : string prop;
  wait_for_acceptance : bool prop;
}

let make ?accept_language ?id ?share_principals ?share_tag_options
    ?wait_for_acceptance ?timeouts ~portfolio_id ~principal_id ~type_
    __id =
  let __type = "aws_servicecatalog_portfolio_share" in
  let __attrs =
    ({
       tf_name = __id;
       accept_language = Prop.computed __type __id "accept_language";
       accepted = Prop.computed __type __id "accepted";
       id = Prop.computed __type __id "id";
       portfolio_id = Prop.computed __type __id "portfolio_id";
       principal_id = Prop.computed __type __id "principal_id";
       share_principals =
         Prop.computed __type __id "share_principals";
       share_tag_options =
         Prop.computed __type __id "share_tag_options";
       type_ = Prop.computed __type __id "type";
       wait_for_acceptance =
         Prop.computed __type __id "wait_for_acceptance";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_portfolio_share
        (aws_servicecatalog_portfolio_share ?accept_language ?id
           ?share_principals ?share_tag_options ?wait_for_acceptance
           ?timeouts ~portfolio_id ~principal_id ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?id ?share_principals
    ?share_tag_options ?wait_for_acceptance ?timeouts ~portfolio_id
    ~principal_id ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?id ?share_principals ?share_tag_options
      ?wait_for_acceptance ?timeouts ~portfolio_id ~principal_id
      ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
