_ << EOF
details {
  user-select: none;
}

details>summary {
  width: 24px;
  height: 24px;
  transition: all 0.3s;
  margin-left: 10px;
  margin-bottom: 25px;
}

details>summary span.icon {
  margin-left: 10px;
}

details[open] summary {
  transform:scale(1.5);
}

summary {
  display: flex;
  cursor: pointer;
}

summary::-webkit-details-marker {
  display: none;
}
EOF
