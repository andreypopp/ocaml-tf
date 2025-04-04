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

type aws_servicecatalog_constraint = {
  accept_language : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicecatalog_constraint) -> ()

let yojson_of_aws_servicecatalog_constraint =
  (function
   | {
       accept_language = v_accept_language;
       description = v_description;
       id = v_id;
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
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
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
         match v_accept_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accept_language", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_servicecatalog_constraint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalog_constraint

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let aws_servicecatalog_constraint ?accept_language ?description
    ?timeouts ~id () : aws_servicecatalog_constraint =
  { accept_language; description; id; timeouts }

type t = {
  tf_name : string;
  accept_language : string prop;
  description : string prop;
  id : string prop;
  owner : string prop;
  parameters : string prop;
  portfolio_id : string prop;
  product_id : string prop;
  status : string prop;
  type_ : string prop;
}

let make ?accept_language ?description ?timeouts ~id __id =
  let __type = "aws_servicecatalog_constraint" in
  let __attrs =
    ({
       tf_name = __id;
       accept_language = Prop.computed __type __id "accept_language";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       owner = Prop.computed __type __id "owner";
       parameters = Prop.computed __type __id "parameters";
       portfolio_id = Prop.computed __type __id "portfolio_id";
       product_id = Prop.computed __type __id "product_id";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_constraint
        (aws_servicecatalog_constraint ?accept_language ?description
           ?timeouts ~id ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?description ?timeouts ~id
    __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?description ?timeouts ~id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
