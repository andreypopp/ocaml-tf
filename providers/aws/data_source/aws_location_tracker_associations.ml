(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_location_tracker_associations = {
  id : string prop option; [@option]
  tracker_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_location_tracker_associations) -> ()

let yojson_of_aws_location_tracker_associations =
  (function
   | { id = v_id; tracker_name = v_tracker_name } ->
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
       `Assoc bnds
    : aws_location_tracker_associations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_location_tracker_associations

[@@@deriving.end]

let aws_location_tracker_associations ?id ~tracker_name () :
    aws_location_tracker_associations =
  { id; tracker_name }

type t = {
  tf_name : string;
  consumer_arns : string list prop;
  id : string prop;
  tracker_name : string prop;
}

let make ?id ~tracker_name __id =
  let __type = "aws_location_tracker_associations" in
  let __attrs =
    ({
       tf_name = __id;
       consumer_arns = Prop.computed __type __id "consumer_arns";
       id = Prop.computed __type __id "id";
       tracker_name = Prop.computed __type __id "tracker_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_location_tracker_associations
        (aws_location_tracker_associations ?id ~tracker_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~tracker_name __id =
  let (r : _ Tf_core.resource) = make ?id ~tracker_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
