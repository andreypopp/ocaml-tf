(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_outposts_outpost_instance_type = {
  arn : string prop;
  id : string prop option; [@option]
  instance_type : string prop option; [@option]
  preferred_instance_types : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_outposts_outpost_instance_type) -> ()

let yojson_of_aws_outposts_outpost_instance_type =
  (function
   | {
       arn = v_arn;
       id = v_id;
       instance_type = v_instance_type;
       preferred_instance_types = v_preferred_instance_types;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_preferred_instance_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preferred_instance_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_outposts_outpost_instance_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_outposts_outpost_instance_type

[@@@deriving.end]

let aws_outposts_outpost_instance_type ?id ?instance_type
    ?preferred_instance_types ~arn () :
    aws_outposts_outpost_instance_type =
  { arn; id; instance_type; preferred_instance_types }

type t = {
  arn : string prop;
  id : string prop;
  instance_type : string prop;
  preferred_instance_types : string list prop;
}

let make ?id ?instance_type ?preferred_instance_types ~arn __id =
  let __type = "aws_outposts_outpost_instance_type" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       instance_type = Prop.computed __type __id "instance_type";
       preferred_instance_types =
         Prop.computed __type __id "preferred_instance_types";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_outposts_outpost_instance_type
        (aws_outposts_outpost_instance_type ?id ?instance_type
           ?preferred_instance_types ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?instance_type ?preferred_instance_types
    ~arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?instance_type ?preferred_instance_types ~arn __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
