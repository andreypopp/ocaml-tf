(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logging_configuration__log_destination_config = {
  log_destination : string prop Tf_core.assoc;
  log_destination_type : string prop;
  log_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_configuration__log_destination_config) -> ()

let yojson_of_logging_configuration__log_destination_config =
  (function
   | {
       log_destination = v_log_destination;
       log_destination_type = v_log_destination_type;
       log_type = v_log_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_type in
         ("log_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_destination_type
         in
         ("log_destination_type", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_log_destination
         in
         ("log_destination", arg) :: bnds
       in
       `Assoc bnds
    : logging_configuration__log_destination_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_configuration__log_destination_config

[@@@deriving.end]

type logging_configuration = {
  log_destination_config :
    logging_configuration__log_destination_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_configuration) -> ()

let yojson_of_logging_configuration =
  (function
   | { log_destination_config = v_log_destination_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_log_destination_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_logging_configuration__log_destination_config)
               v_log_destination_config
           in
           let bnd = "log_destination_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : logging_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_configuration

[@@@deriving.end]

type aws_networkfirewall_logging_configuration = {
  firewall_arn : string prop;
  id : string prop option; [@option]
  logging_configuration : logging_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkfirewall_logging_configuration) -> ()

let yojson_of_aws_networkfirewall_logging_configuration =
  (function
   | {
       firewall_arn = v_firewall_arn;
       id = v_id;
       logging_configuration = v_logging_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_logging_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logging_configuration)
               v_logging_configuration
           in
           let bnd = "logging_configuration", arg in
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
         let arg = yojson_of_prop yojson_of_string v_firewall_arn in
         ("firewall_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkfirewall_logging_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkfirewall_logging_configuration

[@@@deriving.end]

let logging_configuration__log_destination_config ~log_destination
    ~log_destination_type ~log_type () :
    logging_configuration__log_destination_config =
  { log_destination; log_destination_type; log_type }

let logging_configuration ~log_destination_config () :
    logging_configuration =
  { log_destination_config }

let aws_networkfirewall_logging_configuration ?id ~firewall_arn
    ~logging_configuration () :
    aws_networkfirewall_logging_configuration =
  { firewall_arn; id; logging_configuration }

type t = {
  tf_name : string;
  firewall_arn : string prop;
  id : string prop;
}

let make ?id ~firewall_arn ~logging_configuration __id =
  let __type = "aws_networkfirewall_logging_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       firewall_arn = Prop.computed __type __id "firewall_arn";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkfirewall_logging_configuration
        (aws_networkfirewall_logging_configuration ?id ~firewall_arn
           ~logging_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~firewall_arn ~logging_configuration __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~firewall_arn ~logging_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
