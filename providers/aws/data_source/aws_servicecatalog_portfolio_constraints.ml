(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type details = {
  constraint_id : string prop;
  description : string prop;
  owner : string prop;
  portfolio_id : string prop;
  product_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : details) -> ()

let yojson_of_details =
  (function
   | {
       constraint_id = v_constraint_id;
       description = v_description;
       owner = v_owner;
       portfolio_id = v_portfolio_id;
       product_id = v_product_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product_id in
         ("product_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_portfolio_id in
         ("portfolio_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_constraint_id in
         ("constraint_id", arg) :: bnds
       in
       `Assoc bnds
    : details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_details

[@@@deriving.end]

type aws_servicecatalog_portfolio_constraints = {
  accept_language : string prop option; [@option]
  id : string prop option; [@option]
  portfolio_id : string prop;
  product_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicecatalog_portfolio_constraints) -> ()

let yojson_of_aws_servicecatalog_portfolio_constraints =
  (function
   | {
       accept_language = v_accept_language;
       id = v_id;
       portfolio_id = v_portfolio_id;
       product_id = v_product_id;
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
         match v_product_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "product_id", arg in
             bnd :: bnds
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
    : aws_servicecatalog_portfolio_constraints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalog_portfolio_constraints

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let aws_servicecatalog_portfolio_constraints ?accept_language ?id
    ?product_id ?timeouts ~portfolio_id () :
    aws_servicecatalog_portfolio_constraints =
  { accept_language; id; portfolio_id; product_id; timeouts }

type t = {
  tf_name : string;
  accept_language : string prop;
  details : details list prop;
  id : string prop;
  portfolio_id : string prop;
  product_id : string prop;
}

let make ?accept_language ?id ?product_id ?timeouts ~portfolio_id
    __id =
  let __type = "aws_servicecatalog_portfolio_constraints" in
  let __attrs =
    ({
       tf_name = __id;
       accept_language = Prop.computed __type __id "accept_language";
       details = Prop.computed __type __id "details";
       id = Prop.computed __type __id "id";
       portfolio_id = Prop.computed __type __id "portfolio_id";
       product_id = Prop.computed __type __id "product_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_portfolio_constraints
        (aws_servicecatalog_portfolio_constraints ?accept_language
           ?id ?product_id ?timeouts ~portfolio_id ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?id ?product_id ?timeouts
    ~portfolio_id __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?id ?product_id ?timeouts ~portfolio_id
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
