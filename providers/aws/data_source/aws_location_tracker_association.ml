(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_location_tracker_association = {
  consumer_arn : string prop;
  id : string prop option; [@option]
  tracker_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_location_tracker_association) -> ()

let yojson_of_aws_location_tracker_association =
  (function
   | {
       consumer_arn = v_consumer_arn;
       id = v_id;
       tracker_name = v_tracker_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tracker_name in
         ("tracker_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_consumer_arn in
         ("consumer_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_location_tracker_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_location_tracker_association

[@@@deriving.end]

let aws_location_tracker_association ?id ~consumer_arn ~tracker_name
    () : aws_location_tracker_association =
  { consumer_arn; id; tracker_name }

type t = {
  tf_name : string;
  consumer_arn : string prop;
  id : string prop;
  tracker_name : string prop;
}

let make ?id ~consumer_arn ~tracker_name __id =
  let __type = "aws_location_tracker_association" in
  let __attrs =
    ({
       tf_name = __id;
       consumer_arn = Prop.computed __type __id "consumer_arn";
       id = Prop.computed __type __id "id";
       tracker_name = Prop.computed __type __id "tracker_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_location_tracker_association
        (aws_location_tracker_association ?id ~consumer_arn
           ~tracker_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~consumer_arn ~tracker_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~consumer_arn ~tracker_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
