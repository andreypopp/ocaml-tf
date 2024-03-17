(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emrserverless_application__auto_start_configuration
type aws_emrserverless_application__auto_stop_configuration
type aws_emrserverless_application__image_configuration

type aws_emrserverless_application__initial_capacity__initial_capacity_config__worker_configuration

type aws_emrserverless_application__initial_capacity__initial_capacity_config

type aws_emrserverless_application__initial_capacity
type aws_emrserverless_application__maximum_capacity
type aws_emrserverless_application__network_configuration
type aws_emrserverless_application

val aws_emrserverless_application :
  ?architecture:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  release_label:string prop ->
  type_:string prop ->
  auto_start_configuration:
    aws_emrserverless_application__auto_start_configuration list ->
  auto_stop_configuration:
    aws_emrserverless_application__auto_stop_configuration list ->
  image_configuration:
    aws_emrserverless_application__image_configuration list ->
  initial_capacity:
    aws_emrserverless_application__initial_capacity list ->
  maximum_capacity:
    aws_emrserverless_application__maximum_capacity list ->
  network_configuration:
    aws_emrserverless_application__network_configuration list ->
  string ->
  unit
