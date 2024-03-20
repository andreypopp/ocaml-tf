(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_event_connection = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_event_connection) -> ()

let yojson_of_aws_cloudwatch_event_connection =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_event_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_event_connection

[@@@deriving.end]

let aws_cloudwatch_event_connection ?id ~name () :
    aws_cloudwatch_event_connection =
  { id; name }

type t = {
  arn : string prop;
  authorization_type : string prop;
  id : string prop;
  name : string prop;
  secret_arn : string prop;
}

let make ?id ~name __id =
  let __type = "aws_cloudwatch_event_connection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       authorization_type =
         Prop.computed __type __id "authorization_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       secret_arn = Prop.computed __type __id "secret_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_connection
        (aws_cloudwatch_event_connection ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
