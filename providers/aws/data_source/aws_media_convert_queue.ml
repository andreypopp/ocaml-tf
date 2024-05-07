(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_media_convert_queue = {
  id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_media_convert_queue) -> ()

let yojson_of_aws_media_convert_queue =
  (function
   | { id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_media_convert_queue -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_media_convert_queue

[@@@deriving.end]

let aws_media_convert_queue ?tags ~id () : aws_media_convert_queue =
  { id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

let make ?tags ~id __id =
  let __type = "aws_media_convert_queue" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_media_convert_queue
        (aws_media_convert_queue ?tags ~id ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ~id __id =
  let (r : _ Tf_core.resource) = make ?tags ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
