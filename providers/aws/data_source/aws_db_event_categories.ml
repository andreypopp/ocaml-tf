(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_db_event_categories = {
  id : string prop option; [@option]
  source_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_event_categories) -> ()

let yojson_of_aws_db_event_categories =
  (function
   | { id = v_id; source_type = v_source_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_type", arg in
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
       `Assoc bnds
    : aws_db_event_categories -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_event_categories

[@@@deriving.end]

let aws_db_event_categories ?id ?source_type () :
    aws_db_event_categories =
  { id; source_type }

type t = {
  event_categories : string list prop;
  id : string prop;
  source_type : string prop;
}

let make ?id ?source_type __id =
  let __type = "aws_db_event_categories" in
  let __attrs =
    ({
       event_categories =
         Prop.computed __type __id "event_categories";
       id = Prop.computed __type __id "id";
       source_type = Prop.computed __type __id "source_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_event_categories
        (aws_db_event_categories ?id ?source_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?source_type __id =
  let (r : _ Tf_core.resource) = make ?id ?source_type __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
