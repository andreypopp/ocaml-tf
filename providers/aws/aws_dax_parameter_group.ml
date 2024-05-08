(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameters = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : parameters) -> ()

let yojson_of_parameters =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameters

[@@@deriving.end]

type aws_dax_parameter_group = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  parameters : parameters list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dax_parameter_group) -> ()

let yojson_of_aws_dax_parameter_group =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       parameters = v_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_parameters) v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dax_parameter_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dax_parameter_group

[@@@deriving.end]

let parameters ~name ~value () : parameters = { name; value }

let aws_dax_parameter_group ?description ?id ~name ~parameters () :
    aws_dax_parameter_group =
  { description; id; name; parameters }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
}

let make ?description ?id ~name ~parameters __id =
  let __type = "aws_dax_parameter_group" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dax_parameter_group
        (aws_dax_parameter_group ?description ?id ~name ~parameters
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~name ~parameters __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~name ~parameters __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
