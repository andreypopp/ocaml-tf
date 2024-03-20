(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_db_subnet_group = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_subnet_group) -> ()

let yojson_of_aws_db_subnet_group =
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
    : aws_db_subnet_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_subnet_group

[@@@deriving.end]

let aws_db_subnet_group ?id ~name () : aws_db_subnet_group =
  { id; name }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  subnet_ids : string list prop;
  supported_network_types : string list prop;
  vpc_id : string prop;
}

let make ?id ~name __id =
  let __type = "aws_db_subnet_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       supported_network_types =
         Prop.computed __type __id "supported_network_types";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_subnet_group
        (aws_db_subnet_group ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
